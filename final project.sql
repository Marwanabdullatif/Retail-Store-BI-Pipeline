 -- ==============================================================================
-- PROJECT: Graduation Project - Sales & Product Data Analysis
-- DATABASE SYSTEM: MySQL
-- DESCRIPTION: Full Documented Script for Schema Setup, Relationships, and EDA
-- ==============================================================================
-- ------------------------------------------------------------------------------
-- 1. Database Creation & Environment Setup
-- ------------------------------------------------------------------------------

-- تفعيل خاصية السماح برفع الملفات المحلية من الجهاز إلى السيرفر
SET GLOBAL local_infile = 1;

-- تحميل واستيراد البيانات من ملف الـ CSV الخارجي لجدول الـ Calendar مع تجاهل سطر العناوين الأول
LOAD DATA LOCAL INFILE 'C:/Users/DELL/OneDrive/Desktop/Calendar.csv'
INTO TABLE Calendar 
FIELDS TERMINATED BY ',' 
IGNORE 1 ROWS;

-- إضافة عمود جديد بنوع (DATE) حقيقي لتحويل التواريخ النصية إليه
ALTER TABLE calendar ADD COLUMN date DATE;

-- إيقاف وضع التحديث الآمن (Safe Updates) مؤقتاً لتعديل بيانات الجدول بالكامل دون شروط
SET SQL_SAFE_UPDATES = 0;

-- تحويل التواريخ النصية من عمود (raw_date) إلى تواريخ حقيقية وفورمات سليم جوه العمود الجديد
UPDATE calendar 
SET date = STR_TO_DATE(raw_date, '%m/%d/%Y');

-- إعادة تفعيل وضع التحديث الآمن لحماية البيانات من التعديلات الخاطئة
SET SQL_SAFE_UPDATES = 1;

-- حذف العمود النصي القديم (raw_date) بعد استخراج البيانات منه وتنظيفها بنجاح
ALTER TABLE calendar DROP COLUMN raw_date;


-- ------------------------------------------------------------------------------
-- 2. Defining Primary Keys (Data Integrity)
-- ------------------------------------------------------------------------------

-- تعيين عمود (product_id) كـ مفتاح أساسي فريد لجدول المنتجات
ALTER TABLE Products ADD PRIMARY KEY (product_id);

-- تعيين عمود (customer_id) كـ مفتاح أساسي فريد لجدول العملاء
ALTER TABLE customers ADD PRIMARY KEY (customer_id);

-- تعيين عمود (store_id) كـ مفتاح أساسي فريد لجدول المتاجر
ALTER TABLE stores ADD PRIMARY KEY (store_id);


-- ------------------------------------------------------------------------------
-- 3. Establishing Relationships (Foreign Keys & Constraints)
-- ------------------------------------------------------------------------------

-- [1] ربط جداول المبيعات لعامي 2017 و 2018 بجدول المنتجات عبر الـ (product_id)
ALTER TABLE `Sales 2017` ADD FOREIGN KEY (product_id) REFERENCES Products(product_id);
ALTER TABLE `Sales 2018` ADD FOREIGN KEY (product_id) REFERENCES Products(product_id);

-- [2] ربط جداول المبيعات لعامي 2017 و 2018 بجدول العملاء عبر الـ (customer_id)
ALTER TABLE `Sales 2017` ADD FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);
ALTER TABLE `Sales 2018` ADD FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);

-- [3] ربط جداول المبيعات لعامي 2017 و 2018 بجدول المتاجر عبر الـ (store_id)
ALTER TABLE `Sales 2017` ADD FOREIGN KEY (store_id) REFERENCES Stores(store_id);
ALTER TABLE `Sales 2018` ADD FOREIGN KEY (store_id) REFERENCES Stores(store_id);

-- [4] ربط جدول المرتجعات (Returns) بجدولي المنتجات والمتاجر لضمان مرجعية البيانات
ALTER TABLE Returns ADD FOREIGN KEY (product_id) REFERENCES Products(product_id);
ALTER TABLE Returns ADD FOREIGN KEY (store_id) REFERENCES Stores(store_id);


-- ------------------------------------------------------------------------------
-- 4. Exploratory Data Analysis (EDA) & Sales Insights
-- ------------------------------------------------------------------------------

-- كويري (1): حساب إجمالي الإيرادات لكل منتج لعام 2017 بترتيب تنازلي لمعرفة المنتجات الأكثر مبيعاً بقيمتها الماللية
SELECT 
    p.product_name,
    SUM(s.quantity * p.product_retail_price) AS total_revenue
FROM `Sales 2017` s
JOIN Products p ON s.product_id = p.product_id
GROUP p.product_name
ORDER BY total_revenue DESC;

-- كويري (2): نفس الكويري السابق ولكن مع تقريب الأرقام لعشرتين عشريتين (Round) والجروبينج بالـ ID لضمان دقة الحسابات
SELECT
    p.product_name,
    ROUND(SUM(s.quantity * p.product_retail_price), 2) AS total_reveneu
FROM `Sales 2017` s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_reveneu DESC;
 
-- كويري (3): حساب إجمالي كميات القطع المباعة (Quantity) لكل منتج في عام 2017 لمعرفة حجم السحب الفعلي
SELECT 
    p.product_name, 
    SUM(s.quantity) AS total_sold
FROM `Sales 2017` s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- كويري (4): فلترة المنتجات وإظهار فقط المنتجات القوية التي تخطت مبيعاتها الـ 250 قطعة في عام 2017 باستخدام شرط (HAVING)
SELECT 
    p.product_name, 
    SUM(s.quantity) AS total_sold
FROM `Sales 2017` s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
HAVING total_sold > 250;  

-- كويري (5): تحليل أداء الفروع والمتاجر بحساب إجمالي قطع المنتجات المباعة في كل فرع لعام 2017 وتحديد الفرع المتصدر
SELECT 
    st.store_name, 
    SUM(s.quantity) AS total_items_sold
FROM `Sales 2017` s
JOIN Stores st ON s.store_id = st.store_id
GROUP BY st.store_name
ORDER BY total_items_sold DESC;


-- ------------------------------------------------------------------------------
-- 5. Database Views (Optimizing Power BI Connection)
-- ------------------------------------------------------------------------------

-- [1] إنشاء فيو (View) مدمج لبيانات 2017 لسهولة استدعائه وربطه بالتقارير دون الحاجة لكتابة الـ Join كل مرة
CREATE OR REPLACE VIEW view_2017 AS
SELECT s.*, p.product_name, p.product_retail_price
FROM `Sales 2017` s
JOIN Products p ON s.product_id = p.product_id;

-- [2] إنشاء فيو (View) مدمج لبيانات 2018 بنفس الطريقة لتبسيط الموديلينج في الباور بي آي
CREATE OR REPLACE VIEW view_2018 AS
SELECT s.*, p.product_name, p.product_retail_price
FROM `Sales 2018` s
JOIN Products p ON s.product_id = p.product_id;


-- ------------------------------------------------------------------------------
-- 6. Year-Over-Year (YoY) Growth Analysis (FIXED & RUNNABLE)
-- ------------------------------------------------------------------------------

-- SELECT 
--      p.product_name,
--     ROUND(SUM(s17.quantity * p.product_retail_price), 2) AS revenue_2017,
--     ROUND(SUM(s18.quantity * p.product_retail_price), 2) AS revenue_2018,
 --    ROUND(SUM(s18.quantity * p.product_retail_price) - SUM(s17.quantity * p.product_retail_price), 2) AS growth_amount
-- FROM Products p
-- LEFT JOIN `Sales 2017` s17 ON p.product_id = s17.product_id
-- LEFT JOIN `Sales 2018` s18 ON p.product_id = s18.product_id
-- GROUP BY p.product_name
-- ORDER BY revenue_2018 DESC; 