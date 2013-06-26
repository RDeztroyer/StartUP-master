--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for loading the the catalog data used in the Archetype.   Implementors can change this file
-- to load their initial catalog.
--

-- BLC Admin Required Categories
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (1,'Root','Root',NULL,NULL,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2, 'Primary Nav','Primary Nav',NULL,1,CURRENT_TIMESTAMP);

-- Custom store navigation (default template uses these for the header navigation)
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE, DISPLAY_TEMPLATE) VALUES (2001,'HOME','HOME','/',2,CURRENT_TIMESTAMP, 'layout/home');
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2002,'QUESTION PAPERS','QUESTION PAPERS','/hot-sauces',2,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2003,'NEWRELEASES','NEW RELEASES','/merchandise',2,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007,'Second hand books','BOOKS','/books',2,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2004,'EDUCATIONAL NEWS','EDUCATIONAL NEWS','/edunews',2,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2005,'AUTHORS','AUTHORS','/new-to-hot-sauce',2,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2006,'LIBRARY','LIBRARY','/faq',2,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (20071,'SCHOOL','SCHOOL','/school',2007,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (20072,'COLLEGE','COLLEGE','/college',2007,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (20073,'COMPETITIVE EXAMS','COMPETITIVE EXAMS','/competitive-exams',2007,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007101,'Physics','Physics','/physics',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007102,'Chemistry','Chemistry','/chemistry',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007103,'Mathematics','Mathematics','/Mathematics',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007201,'Engineering','Engineering','/Engineering',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007202,'Medical','Medical','/Medical',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007203,'Science','Science','/Science',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007204,'Law','Law','/Law',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007205,'Architecture','Architecture','/Architecture',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007206,'BusinessManagement','Business & Management','/BM',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007207,'ArtsHumanities','Arts & Humanities','/AH',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007208,'ComputersInternet','Computers & Internet','/CI',20071,CURRENT_TIMESTAMP);
INSERT INTO BLC_CATEGORY (CATEGORY_ID,DESCRIPTION,NAME,URL,DEFAULT_PARENT_CATEGORY_ID,ACTIVE_START_DATE) VALUES (2007209,'BusinessStudies','Business Studies','/BS',20071,CURRENT_TIMESTAMP);


-- Builds the category hierarchy (simple in this case) - Root --> Nav --> All other categories
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2,1,1);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2001,2,1);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2002,2,4);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2003,2,3);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2004,2,5);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2005,2,6);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2006,2,7);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007,2,2);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (20071,2007,1);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (20072,2007,2);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (20073,2007,3);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007101,20071,1);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007102,20071,2);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007103,20071,3);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007201,20072,1);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007202,20072,2);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007203,20072,3);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007204,20072,4);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007205,20072,5);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007206,20072,6);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007207,20072,7);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007208,20072,8);
INSERT INTO BLC_CATEGORY_XREF (SUB_CATEGORY_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2007209,20072,9);

-- Add in any applicable search facets for the given category
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (1, 'PRODUCT', 'manufacturer', 'mfg', 1, 's');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (2, 'PRODUCT', 'productAttributes.heatRange', 'heatRange', 0, 'i');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (3, 'PRODUCT', 'defaultSku.retailPrice', 'price', 0, 'p');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (4, 'PRODUCT', 'defaultSku.name', 'name', 1, 's');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (5, 'PRODUCT', 'model', 'model', 1, 's');
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE) VALUES (6, 'PRODUCT', 'defaultSku.description', 'desc', 1);
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE) VALUES (7, 'PRODUCT', 'defaultSku.longDescription', 'ldesc', 1);

-- Search facets for Book category
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE) VALUES (8, 'PRODUCT', 'ISBN', 'isbn', 1);
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, ABBREVIATION, SEARCHABLE, FACET_FIELD_TYPE) VALUES (9, 'PRODUCT', 'productAttributes.language', 'lng', 1, 's');

INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (1, 't');
-- Note that we are don't search on heat range
-- Note that we are don't search on price
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (4, 't');
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (5, 't');
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (6, 't');
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (7, 't');
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (8, 't');
INSERT INTO BLC_FIELD_SEARCH_TYPES (FIELD_ID, SEARCHABLE_FIELD_TYPE) VALUES (9, 't');

INSERT INTO BLC_SEARCH_FACET (SEARCH_FACET_ID, FIELD_ID, LABEL, SHOW_ON_SEARCH, MULTISELECT, SEARCH_DISPLAY_PRIORITY) VALUES (1, 1, 'Manufacturer', 0, 1, 0);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (1, 2002, 1, 1);

INSERT INTO BLC_SEARCH_FACET (SEARCH_FACET_ID, FIELD_ID, LABEL, SHOW_ON_SEARCH, MULTISELECT, SEARCH_DISPLAY_PRIORITY) VALUES (2, 2, 'Heat Range', 0, 1, 0);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (2, 2002, 2, 2);

INSERT INTO BLC_SEARCH_FACET (SEARCH_FACET_ID, FIELD_ID, LABEL, SHOW_ON_SEARCH, MULTISELECT, SEARCH_DISPLAY_PRIORITY) VALUES (3, 3, 'Price', 1, 1, 1);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (3, 1, 3, 3);
INSERT INTO BLC_SEARCH_FACET_RANGE (SEARCH_FACET_RANGE_ID, SEARCH_FACET_ID, MIN_VALUE, MAX_VALUE) VALUES (1, 3, 0, 5);
INSERT INTO BLC_SEARCH_FACET_RANGE (SEARCH_FACET_RANGE_ID, SEARCH_FACET_ID, MIN_VALUE, MAX_VALUE) VALUES (2, 3, 5, 10);
INSERT INTO BLC_SEARCH_FACET_RANGE (SEARCH_FACET_RANGE_ID, SEARCH_FACET_ID, MIN_VALUE, MAX_VALUE) VALUES (3, 3, 10, 15);
INSERT INTO BLC_SEARCH_FACET_RANGE (SEARCH_FACET_RANGE_ID, SEARCH_FACET_ID, MIN_VALUE, MAX_VALUE) VALUES (4, 3, 15, null);

INSERT INTO BLC_SEARCH_FACET (SEARCH_FACET_ID, FIELD_ID, LABEL, SHOW_ON_SEARCH, MULTISELECT, SEARCH_DISPLAY_PRIORITY) VALUES (4, 9, 'Language', 0, 1, 0);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (4, 2007, 4, 4);

------------------------------------------------------------------------------------------------------------------
-- Inserting products manually involves five steps which are outlined below.   Typically, products are loaded 
-- up front in the project and then managed via the Broadleaf Commerce admin.   
--
-- Loading through this script is a convenient way to get started when prototyping and can be useful in development
-- as a way to share data-setup without requiring a shared DB connection. 
------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 1:  Create the products
-- =============================================
-- In this step, we are also populating the manufacturer for the product
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1,2002,'/hot-sauces/sudden_death_sauce','Blair''s',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (2,2002,'/hot-sauces/sweet_death_sauce','Blair''s',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (3,2002,'/hot-sauces/hoppin_hot_sauce','Salsa Express',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (4,2002,'/hot-sauces/day_of_the_dead_chipotle_hot_sauce','Spice Exchange',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (5,2002,'/hot-sauces/day_of_the_dead_habanero_hot_sauce','Spice Exchange',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (6,2002,'/hot-sauces/day_of_the_dead_scotch_bonnet_sauce','Spice Exchange',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (7,2002,'/hot-sauces/green_ghost','Garden Row',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (8,2002,'/hot-sauces/blazin_saddle_hot_habanero_pepper_sauce','D. L. Jardine''s',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (9,2002,'/hot-sauces/armageddon_hot_sauce_to_end_all','Figueroa Brothers',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (10,2002,'/hot-sauces/dr_chilemeisters_insane_hot_sauce','Figueroa Brothers',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (11,2002,'/hot-sauces/bull_snort_cowboy_cayenne_pepper_hot_sauce','Brazos Legends',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (12,2002,'/hot-sauces/cafe_louisiane_sweet_cajun_blackening_sauce','Garden Row',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (13,2002,'/hot-sauces/bull_snort_smokin_toncils_hot_sauce','Brazos Legends',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (14,2002,'/hot-sauces/cool_cayenne_pepper_hot_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (15,2002,'/hot-sauces/roasted_garlic_hot_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (16,2002,'/hot-sauces/scotch_bonnet_hot_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (17,2002,'/hot-sauces/insanity_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (18,2002,'/hot-sauces/hurtin_jalepeno_hot_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (19,2002,'/hot-sauces/roasted_red_pepper_chipotle_hot_sauce','Dave''s Gourmet',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (20,2002,'/hot-sauces/fearless_beauty','Dave''s Gourmet',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (21,2002,'/hot-sauces/the_rising','Dave''s Gourmet',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (22,2002,'/hot-sauces/deception_point','Dave''s Gourmet',TRUE);

INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (100,2003,'/merchandise/hawt_like_a_habanero_mens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (200,2003,'/merchandise/hawt_like_a_habanero_womens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (300,2003,'/merchandise/heat_clinic_hand-drawn_mens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (400,2003,'/merchandise/heat_clinic_hand-drawn_womens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (500,2003,'/merchandise/heat_clinic_mascot_mens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (600,2003,'/merchandise/heat_clinic_mascot_womens','The Heat Clinic',FALSE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (700,2003,'/merchandise/the_da_vinci_code','The Heat Clinic',TRUE);

INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (1000,2004,'/books/resonate','The Heat Clinic',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (2000,2004,'/books/The_Humane_Interface','The Heat Clinic',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (3000,2004,'/books/environmental_psychology','The Heat Clinic',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (4000,2004,'/books/recurrency','The Heat Clinic',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (5000,2004,'/books/BPMN','The Heat Clinic',TRUE);
INSERT INTO BLC_PRODUCT (PRODUCT_ID,  DEFAULT_CATEGORY_ID, URL, MANUFACTURE, IS_FEATURED_PRODUCT) VALUES (6000,2004,'/books/catch_22','The Heat Clinic',TRUE);

------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 2:  Create "default" SKUs
-- =============================================
-- The Broadleaf Commerce product model is setup such that every product has a default SKU.   For many products,
-- a product only has one SKU.    SKUs hold the pricing information for the product and are the actual entity
-- that is added to the cart.    Inventory, Pricing, and Fulfillment concerns are done at the SKU level
------------------------------------------------------------------------------------------------------------------

INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,DESCRIPTION) VALUES (1000,1000,'Resonate','Adelaide Carmichael and Damien Allen could not have been more opposite. Adelaide mother abandoned her when she was ten years old, leaving her to be raised by her abusive and alcoholic father. Damien on the other hand came from a wealthy family, was a local celebrity, and seemed to have a bright future ahead of him. Despite their differences, Adelaide and Damien were young, wild, and fiercely in love. And they had a plan. They were going to run away together. To live and love each other freely without restraints.',7.99,6.09,'Y','Y',CURRENT_TIMESTAMP,'ENGLISH');
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,DESCRIPTION) VALUES (2000,2000,'The Humane Interface','The honeymoon with digital technology is over: millions of users are tired of having to learn huge, arcane programs to perform the simplest tasks; fatigued by the pressure of constant upgrades, and have had enough of system crashes. In The Humane Interface, Jef Raskin -- the legendary, controversial creator of the original Apple Macintosh project -- shows that there is another path. Raskin explains why todays interface techniques lead straight to a dead end, and offers breakthrough ideas for building systems users will understand -- and love. Raskin reveals the fundamental design failures at the root of the problems so many users experience; shows how to understand user interfaces scientifically and quantitatively; and introduces fundamental principles that should underlie any next-generation user interface.',4.99,4.09,'Y','Y',CURRENT_TIMESTAMP,'TAMIL');
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,DESCRIPTION) VALUES (3000,3000,'Environmental Psychology','The honeymoon with digital technology is over: millions of users are tired of having to learn huge, arcane programs to perform the simplest tasks; fatigued by the pressure of constant upgrades, and have had enough of system crashes. In The Humane Interface, Jef Raskin -- the legendary, controversial creator of the original Apple Macintosh project -- shows that there is another path. Raskin explains why todays interface techniques lead straight to a dead end, and offers breakthrough ideas for building systems users will understand -- and love. Raskin reveals the fundamental design failures at the root of the problems so many users experience; shows how to understand user interfaces scientifically and quantitatively; and introduces fundamental principles that should underlie any next-generation user interface.',4.99,4.09,'Y','Y',CURRENT_TIMESTAMP,'ENGLISH');
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,DESCRIPTION) VALUES (4000,4000,'Recurrency','The honeymoon with digital technology is over: millions of users are tired of having to learn huge, arcane programs to perform the simplest tasks; fatigued by the pressure of constant upgrades, and have had enough of system crashes. In The Humane Interface, Jef Raskin -- the legendary, controversial creator of the original Apple Macintosh project -- shows that there is another path. Raskin explains why todays interface techniques lead straight to a dead end, and offers breakthrough ideas for building systems users will understand -- and love. Raskin reveals the fundamental design failures at the root of the problems so many users experience; shows how to understand user interfaces scientifically and quantitatively; and introduces fundamental principles that should underlie any next-generation user interface.',4.99,4.09,'Y','Y',CURRENT_TIMESTAMP,'FRENCH');
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,DESCRIPTION) VALUES (5000,5000,'BPMN','The honeymoon with digital technology is over: millions of users are tired of having to learn huge, arcane programs to perform the simplest tasks; fatigued by the pressure of constant upgrades, and have had enough of system crashes. In The Humane Interface, Jef Raskin -- the legendary, controversial creator of the original Apple Macintosh project -- shows that there is another path. Raskin explains why todays interface techniques lead straight to a dead end, and offers breakthrough ideas for building systems users will understand -- and love. Raskin reveals the fundamental design failures at the root of the problems so many users experience; shows how to understand user interfaces scientifically and quantitatively; and introduces fundamental principles that should underlie any next-generation user interface.',4.99,4.09,'Y','Y',CURRENT_TIMESTAMP,'ENGLISH');
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE,DESCRIPTION) VALUES (6000,6000,'Catch 22','The honeymoon with digital technology is over: millions of users are tired of having to learn huge, arcane programs to perform the simplest tasks; fatigued by the pressure of constant upgrades, and have had enough of system crashes. In The Humane Interface, Jef Raskin -- the legendary, controversial creator of the original Apple Macintosh project -- shows that there is another path. Raskin explains why todays interface techniques lead straight to a dead end, and offers breakthrough ideas for building systems users will understand -- and love. Raskin reveals the fundamental design failures at the root of the problems so many users experience; shows how to understand user interfaces scientifically and quantitatively; and introduces fundamental principles that should underlie any next-generation user interface.',4.99,4.09,'Y','Y',CURRENT_TIMESTAMP,'FRENCH');


INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE, INVENTORY_TYPE) VALUES (1,1,'Sudden Death Sauce','As my Chilipals know, I am never one to be satisfied. Hence, the creation of Sudden Death. When you need to go beyond... Sudden Death will deliver! ',10.99,'Y','Y',CURRENT_TIMESTAMP, 'BASIC');
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE, INVENTORY_TYPE) VALUES (2,2,'Sweet Death Sauce','The perfect topper for chicken, fish, burgers or pizza. A great blend of Habanero, Mango, Passion Fruit and more make this Death Sauce an amazing tropical treat.',10.99,'Y','Y',CURRENT_TIMESTAMP, 'BASIC');
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (3,3,'Hoppin'' Hot Sauce','Tangy, ripe cayenne peppes flow together with garlic, onion, tomato paste and a hint of cane sugar to make this a smooth sauce with a bite.  Wonderful on eggs, poultry, pork, or fish, this sauce blends to make rich marinades and soups.',4.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (4,4,'Day of the Dead Chipotle Hot Sauce','When any pepper is dried and smoked, it is referred to as a Chipotle. Usually with a wrinkled, drak brown appearance, the Chipotle delivers a smokey, sweet flavor which is generally used for adding a smokey, roasted flavor to salsas, stews and marinades.',6.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (5,5,'Day of the Dead Habanero Hot Sauce','If you want hot, this is the chile to choose. Native to the Carribean, Yucatan and Northern Coast of South America, the Habanero presents itself in a variety of colors ranging from light green to a bright red. The Habanero''s bold heat, unique flavor and aroma has made it the favorite of chile lovers.',6.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (6,6,'Day of the Dead Scotch Bonnet Hot Sauce','Often mistaken for the Habanero, the Scotch Bonnet has a deeply inverted tip as opposed to the pointed end of the Habanero. Ranging in many colors from green to yellow-orange, the Scotch Bonnet is a staple in West Indies and Barbados style pepper sauces.',6.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (7,7,'Green Ghost','Made with Naga Bhut Jolokia, the World''s Hottest pepper.',11.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (8,8,'Blazin'' Saddle XXX Hot Habanero Pepper Sauce','You bet your boots, this hot sauce earned its name from folks that appreciate an outstanding hot sauce. What you''ll find here is a truly original zesty flavor, not an overpowering pungency that is found in those ordinary Tabasco pepper sauces - even though the pepper used in this product was tested at 285,000 Scoville units. So, saddle up for a ride to remember. To make sure we brought you only the finest Habanero pepper sauce, we went to the foothills of the Mayan mountains in Belize, Central America. This product is prepared entirely by hand using only fresh vegetables and all natural ingredients.',4.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (9,9,'Armageddon The Hot Sauce To End All','All Hell is breaking loose, fire &amp; brimstone rain down? prepare to meet your maker.',12.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (10,10,'Dr. Chilemeister''s Insane Hot Sauce','Here is the Prescription for those who enjoy intolerable heat. Dr. Chilemeister''s sick and evil deadly brew should be used with caution. Pain can become addictive!',12.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (11,11,'Bull Snort Cowboy Cayenne Pepper Hot Sauce','Been there, roped that. Hotter than a buckin'' mare in heat! Sprinkle on meat entrees, seafood and vegetables. Use as additive in barbecue sauce or any food that needs a spicy flavor. Start with a few drops and work up to the desired flavor.',3.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (12,12,'Cafe Louisiane Sweet Cajun Blackening Sauce','One of the more unusual sauces we sell. The original was an old style Cajun sauce and this is it''s updated blackening version. It''s sweet but you get a great hit of cinnamon and cloves with a nice kick of cayenne heat. Use on all foods to give that Cajun flair!',4.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (13,13,'Bull Snort Smokin'' Toncils Hot Sauce','Everything is bigger in Texas, even the burn of a Bull Snortin'' Hot Sauce! shower on that Texas sized steak they call the Ole 96er or your plane Jane vegetables. If you are a fan on making BBQ sauce from scratch like I am, you can use Bull Snort Smokin'' Tonsils Hot Sauce as an additive. Red hot habaneros and cayenne peppers give this tonsil tingler it''s famous flavor and red hot heat. Bull Snort Smokin'' Tonsils Hot Sauce''ll have your bowels buckin'' with just a drop!',3.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (14,14,'Cool Cayenne Pepper Hot Sauce','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',5.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (15,15,'Roasted Garlic Hot Sauce','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',5.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (16,16,'Scotch Bonnet Hot Sauce','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',5.99,'Y','Y',CURRENT_TIMESTAMP);
------------------------------------------------------------------------------------------------------------------
-- Give some of the SKUs a sale price
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (17,17,'Insanity Sauce','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',5.99,4.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (18,18,'Hurtin'' Jalepeno Hot Sauce','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',5.99,4.49,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (19,19,'Roasted Red Pepper & Chipotle Hot Sauce','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',5.99,4.09,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (20,20,'fearless_beauty','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',10.99,8.09,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (21,21,'the_rising','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',7.99,6.09,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,SALE_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (22,22,'deception_point','This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.',4.99,4.09,'Y','Y',CURRENT_TIMESTAMP);

------------------------------------------------------------------------------------------------------------------
-- Some SKUs (such as merchandise) may be product options based on one product. For example, there may be a 
-- "Men's Hand drawn Heat Clinic Shirt" product that has up to 12 SKUs showing the options of 
-- Red/Black/Silver, and Small/Medium/Large/X-Large
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_PRODUCT_OPTION (PRODUCT_OPTION_ID, OPTION_TYPE, ATTRIBUTE_NAME, LABEL, REQUIRED) VALUES (1, 'COLOR', 'COLOR', 'Shirt Color', TRUE);
INSERT INTO BLC_PRODUCT_OPTION (PRODUCT_OPTION_ID, OPTION_TYPE, ATTRIBUTE_NAME, LABEL, REQUIRED) VALUES (2, 'SIZE', 'SIZE', 'Shirt Size', TRUE);

INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (1, 'Black', 1, 1);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (2, 'Red', 2, 1);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (3, 'Silver', 3, 1);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (11, 'S', 1, 2);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (12, 'M', 2, 2);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (13, 'L', 3, 2);
INSERT INTO BLC_PRODUCT_OPTION_VALUE (PRODUCT_OPTION_VALUE_ID, ATTRIBUTE_VALUE, DISPLAY_ORDER, PRODUCT_OPTION_ID) VALUES (14, 'XL', 4, 2);

INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (100,100,'Hawt Like a Habanero Shirt (Men''s)','Men''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (200,200,'Hawt Like a Habanero Shirt (Women''s)','Women''s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.',14.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (300,300,'Heat Clinic Hand-Drawn (Men''s)','This hand-drawn logo shirt for men features a regular fit in three different colors',15.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (400,400,'Heat Clinic Hand-Drawn (Women''s)','This hand-drawn logo shirt for women features a regular fit in three different colors',15.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (500,500,'Heat Clinic Mascot (Men''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (600,600,'Heat Clinic Mascot (Women''s)','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','Y',CURRENT_TIMESTAMP);
INSERT INTO BLC_SKU (SKU_ID,DEFAULT_PRODUCT_ID,NAME,LONG_DESCRIPTION,RETAIL_PRICE,TAXABLE_FLAG,DISCOUNTABLE_FLAG,ACTIVE_START_DATE) VALUES (700,700,'newreleases','Don''t you just love our mascot? Get your very own shirt today!',15.99,'Y','Y',CURRENT_TIMESTAMP);


------------------------------------------------------------------------------------------------------------------
-- Create non-default SKUs for some merchandise. In this case, we're stating that all XL shirts are $1.00 more
-- All other combinations have no special properties, but we must create them so we can track inventory on a 
-- per-SKU level. Generally, either you have only a default SKU or SKUs for all permutations of product options
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (114,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (124,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (134,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (214,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (224,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (234,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (314,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (324,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (334,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (414,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (424,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (434,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (514,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (524,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (534,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (614,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (624,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,RETAIL_PRICE,DISCOUNTABLE_FLAG) VALUES (634,16.99,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (111,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (112,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (113,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (121,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (122,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (123,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (131,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (132,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (133,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (211,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (212,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (213,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (221,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (222,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (223,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (231,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (232,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (233,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (311,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (312,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (313,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (321,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (322,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (323,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (331,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (332,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (333,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (411,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (412,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (413,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (421,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (422,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (423,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (431,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (432,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (433,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (511,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (512,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (513,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (521,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (522,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (523,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (531,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (532,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (533,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (611,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (612,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (613,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (621,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (622,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (623,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (631,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (632,'Y');
INSERT INTO BLC_SKU (SKU_ID,DISCOUNTABLE_FLAG) VALUES (633,'Y');

------------------------------------------------------------------------------------------------------------------
-- Associate the appropriate option values for the skus
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (111, 1), (111, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (112, 1), (112, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (113, 1), (113, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (114, 1), (114, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (121, 2), (121, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (122, 2), (122, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (123, 2), (123, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (124, 2), (124, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (131, 3), (131, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (132, 3), (132, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (133, 3), (133, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (134, 3), (134, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (211, 1), (211, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (212, 1), (212, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (213, 1), (213, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (214, 1), (214, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (221, 2), (221, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (222, 2), (222, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (223, 2), (223, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (224, 2), (224, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (231, 3), (231, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (232, 3), (232, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (233, 3), (233, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (234, 3), (234, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (311, 1), (311, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (312, 1), (312, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (313, 1), (313, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (314, 1), (314, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (321, 2), (321, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (322, 2), (322, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (323, 2), (323, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (324, 2), (324, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (331, 3), (331, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (332, 3), (332, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (333, 3), (333, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (334, 3), (334, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (411, 1), (411, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (412, 1), (412, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (413, 1), (413, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (414, 1), (414, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (421, 2), (421, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (422, 2), (422, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (423, 2), (423, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (424, 2), (424, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (431, 3), (431, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (432, 3), (432, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (433, 3), (433, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (434, 3), (434, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (511, 1), (511, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (512, 1), (512, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (513, 1), (513, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (514, 1), (514, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (521, 2), (521, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (522, 2), (522, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (523, 2), (523, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (524, 2), (524, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (531, 3), (531, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (532, 3), (532, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (533, 3), (533, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (534, 3), (534, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (611, 1), (611, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (612, 1), (612, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (613, 1), (613, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (614, 1), (614, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (621, 2), (621, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (622, 2), (622, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (623, 2), (623, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (624, 2), (624, 14);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (631, 3), (631, 11);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (632, 3), (632, 12);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (633, 3), (633, 13);
INSERT INTO BLC_SKU_OPTION_VALUE_XREF (SKU_ID, PRODUCT_OPTION_VALUE_ID) VALUES (634, 3), (634, 14);


------------------------------------------------------------------------------------------------------------------
-- Add some heat levels to all the products
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (1, 1, 'heatRange', 4);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (2, 2, 'heatRange', 1);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (3, 3, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (4, 4, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (5, 5, 'heatRange', 4);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (6, 6, 'heatRange', 4);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (7, 7, 'heatRange', 3);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (8, 8, 'heatRange', 4);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (9, 9, 'heatRange', 5);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (10, 10, 'heatRange', 5);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (11, 11, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (12, 12, 'heatRange', 1);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (13, 13, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (14, 14, 'heatRange', 2);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (15, 15, 'heatRange', 1);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (16, 16, 'heatRange', 3);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (17, 17, 'heatRange', 5);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (18, 18, 'heatRange', 3);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (19, 19, 'heatRange', 1);
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (1000, 1000, 'language', 'ENGLISH');
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (2000, 2000, 'language', 'TAMIL');
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (3000, 3000, 'language', 'ENGLISH');
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (4000, 4000, 'language', 'HINDI');
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (5000, 5000, 'language', 'ENGLISH');
INSERT INTO BLC_PRODUCT_ATTRIBUTE (PRODUCT_ATTRIBUTE_ID, PRODUCT_ID, NAME, VALUE) VALUES (6000, 6000, 'language', 'FRENCH');

------------------------------------------------------------------------------------------------------------------
-- Link the non-default SKUs for merchandise
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_PRODUCT_SKU_XREF (SKU_ID, PRODUCT_ID) VALUES (111, 100), (112, 100), (113, 100), (114, 100), (121, 100), (122, 100), (123, 100), (124, 100), (131, 100), (132, 100), (133, 100), (134, 100);
INSERT INTO BLC_PRODUCT_SKU_XREF (SKU_ID, PRODUCT_ID) VALUES (211, 200), (212, 200), (213, 200), (214, 200), (221, 200), (222, 200), (223, 200), (224, 200), (231, 200), (232, 200), (233, 200), (234, 200);
INSERT INTO BLC_PRODUCT_SKU_XREF (SKU_ID, PRODUCT_ID) VALUES (311, 300), (312, 300), (313, 300), (314, 300), (321, 300), (322, 300), (323, 300), (324, 300), (331, 300), (332, 300), (333, 300), (334, 300);
INSERT INTO BLC_PRODUCT_SKU_XREF (SKU_ID, PRODUCT_ID) VALUES (411, 400), (412, 400), (413, 400), (414, 400), (421, 400), (422, 400), (423, 400), (424, 400), (431, 400), (432, 400), (433, 400), (434, 400);
INSERT INTO BLC_PRODUCT_SKU_XREF (SKU_ID, PRODUCT_ID) VALUES (511, 500), (512, 500), (513, 500), (514, 500), (521, 500), (522, 500), (523, 500), (524, 500), (531, 500), (532, 500), (533, 500), (534, 500);
INSERT INTO BLC_PRODUCT_SKU_XREF (SKU_ID, PRODUCT_ID) VALUES (611, 600), (612, 600), (613, 600), (614, 600), (621, 600), (622, 600), (623, 600), (624, 600), (631, 600), (632, 600), (633, 600), (634, 600);

------------------------------------------------------------------------------------------------------------------
-- Associate the merchandise products with their appropriate available product options
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (1, 100);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (1, 200);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (1, 300);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (1, 400);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (1, 500);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (1, 600);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (2, 100);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (2, 200);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (2, 300);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (2, 400);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (2, 500);
INSERT INTO BLC_PRODUCT_OPTION_XREF (PRODUCT_OPTION_ID, PRODUCT_ID) VALUES (2, 600);

------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 3:  Create Category/Product Mapping
-- ========================================================
-- Add all hot-sauce items to the hot-sauce category
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (1,2002,1);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2,2002,2);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (3,2002,3);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (4,2002,4);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (5,2002,5);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (6,2002,6);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (7,2002,7);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (8,2002,8);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (9,2002,9);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (10,2002,10);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (11,2002,11);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (12,2002,12);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (13,2002,13);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (14,2002,14);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (15,2002,15);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (16,2002,16);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (17,2002,17);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (18,2002,18);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (19,2002,19);

-- home page items
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (3,2001,1);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (6,2001,2);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (9,2001,3);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (12,2001,4);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (20,2001,5);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (21,2001,6);

-- book items
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (1000,2007,1);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (2000,2007,2);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (3000,2007,3);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (4000,2007,4);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (5000,2007,5);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (6000,2007,6);

-- clearance items
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (7,2004,1);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (8,2004,2);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (10,2004,3);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (11,2004,4);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (18,2004,5);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (21,2004,6);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (22,2004,7);

-- merchandise items
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (100,2003,1);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (200,2003,2);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (300,2003,3);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (400,2003,4);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (500,2003,5);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (600,2003,6);
INSERT INTO BLC_CATEGORY_PRODUCT_XREF (PRODUCT_ID, CATEGORY_ID, DISPLAY_ORDER) VALUES (700,2003,7);

------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 4:  Media Items used by products
-- ========================================================
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (101,'/img/sauces/Sudden-Death-Sauce-Bottle.jpg','Sudden Death Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (102,'/img/sauces/Sudden-Death-Sauce-Close.jpg','Sudden Death Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (201,'/img/sauces/Sweet-Death-Sauce-Bottle.jpg','Sweet Death Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (202,'/img/sauces/Sweet-Death-Sauce-Close.jpg','Sweet Death Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (203,'/img/sauces/Sweet-Death-Sauce-Skull.jpg','Sweet Death Sauce Close-up','alt2');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (204,'/img/sauces/Sweet-Death-Sauce-Tile.jpg','Sweet Death Sauce Close-up','alt3');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (205,'/img/sauces/Sweet-Death-Sauce-Grass.jpg','Sweet Death Sauce Close-up','alt4');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (206,'/img/sauces/Sweet-Death-Sauce-Logo.jpg','Sweet Death Sauce Close-up','alt5');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (301,'/img/sauces/Hoppin-Hot-Sauce-Bottle.jpg','Hoppin Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (302,'/img/sauces/Hoppin-Hot-Sauce-Close.jpg','Hoppin Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (401,'/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Bottle.jpg','Day of the Dead Chipotle Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (402,'/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Close.jpg','Day of the Dead Chipotle Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (501,'/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Bottle.jpg','Day of the Dead Habanero Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (502,'/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Close.jpg','Day of the Dead Habanero Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (601,'/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Bottle.jpg','Day of the Dead Scotch Bonnet Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (602,'/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Close.jpg','Day of the Dead Scotch Bonnet Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (701,'/img/sauces/Green-Ghost-Bottle.jpg','Green Ghost Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (702,'/img/sauces/Green-Ghost-Close.jpg','Green Ghost Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (801,'/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Bottle.jpg','Blazin Saddle XXX Hot Habanero Pepper Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (802,'/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Close.jpg','Blazin Saddle XXX Hot Habanero Pepper Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (901,'/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Bottle.jpg','Armageddon The Hot Sauce To End All Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (902,'/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Close.jpg','Armageddon The Hot Sauce To End All Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1001,'/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Bottle.jpg','Dr. Chilemeisters Insane Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1002,'/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Close.jpg','Dr. Chilemeisters Insane Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1101,'/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Bottle.jpg','Bull Snort Cowboy Cayenne Pepper Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1102,'/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Close.jpg','Bull Snort Cowboy Cayenne Pepper Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1201,'/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Bottle.jpg','Cafe Louisiane Sweet Cajun Blackening Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1202,'/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Close.jpg','Cafe Louisiane Sweet Cajun Blackening Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1301,'/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Bottle.jpg','Bull Snort Smokin Toncils Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1302,'/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Close.jpg','Bull Snort Smokin Toncils Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1401,'/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Bottle.jpg','Cool Cayenne Pepper Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1402,'/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Close.jpg','Cool Cayenne Pepper Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1501,'/img/sauces/Roasted-Garlic-Hot-Sauce-Bottle.jpg','Roasted Garlic Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1502,'/img/sauces/Roasted-Garlic-Hot-Sauce-Close.jpg','Roasted Garlic Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1601,'/img/sauces/Scotch-Bonnet-Hot-Sauce-Bottle.jpg','Scotch Bonnet Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1602,'/img/sauces/Scotch-Bonnet-Hot-Sauce-Close.jpg','Scotch Bonnet Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1701,'/img/sauces/Insanity-Sauce-Bottle.jpg','Insanity Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1702,'/img/sauces/Insanity-Sauce-Close.jpg','Insanity Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1801,'/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Bottle.jpg','Hurtin Jalepeno Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1802,'/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Close.jpg','Hurtin Jalepeno Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1901,'/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Bottle.jpg','Roasted Red Pepper and Chipotle Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (1902,'/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Close.jpg','Roasted Red Pepper and Chipotle Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (2001,'/img/sauces/fearless-beauty.jpg','Roasted Red Pepper and Chipotle Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (2002,'/img/sauces/fearless-beauty-close.jpg','Roasted Red Pepper and Chipotle Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (2101,'/img/sauces/the-rising.jpg','Roasted Red Pepper and Chipotle Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (2102,'/img/sauces/the-rising-close.jpg','Roasted Red Pepper and Chipotle Hot Sauce Close-up','alt1');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (2201,'/img/sauces/deception-point.jpg','Roasted Red Pepper and Chipotle Hot Sauce Bottle','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (2202,'/img/sauces/deception-point-close.jpg','Roasted Red Pepper and Chipotle Hot Sauce Close-up','alt1');



INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (10001,'/img/merch/habanero_mens_black.jpg','Hawt Like a Habanero Men''s Black','primary','Black');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (10002,'/img/merch/habanero_mens_red.jpg','Hawt Like a Habanero Men''s Red','primary','Red');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (10003,'/img/merch/habanero_mens_silver.jpg','Hawt Like a Habanero Men''s Silver','primary','Silver');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (20001,'/img/merch/habanero_womens_black.jpg','Hawt Like a Habanero Women''s Black','primary','Black');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (20002,'/img/merch/habanero_womens_red.jpg','Hawt Like a Habanero Women''s Red','primary','Red');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT, TAGS) VALUES (20003,'/img/merch/habanero_womens_silver.jpg','Hawt Like a Habanero Women''s Silver','primary','Silver');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (30001,'/img/merch/heat_clinic_handdrawn_mens_black.jpg','Heat Clinic Hand-Drawn Men''s Black','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (30002,'/img/merch/heat_clinic_handdrawn_mens_red.jpg','Heat Clinic Hand-Drawn Men''s Red','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (30003,'/img/merch/heat_clinic_handdrawn_mens_silver.jpg','Heat Clinic Hand-Drawn Men''s Silver','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (40001,'/img/merch/heat_clinic_handdrawn_womens_black.jpg','Heat Clinic Hand-Drawn Women''s Black','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (40002,'/img/merch/heat_clinic_handdrawn_womens_red.jpg','Heat Clinic Hand-Drawn Women''s Red','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (40003,'/img/merch/heat_clinic_handdrawn_womens_silver.jpg','Heat Clinic Hand-Drawn Women''s Silver','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (50001,'/img/merch/heat_clinic_mascot_mens_black.jpg','Heat Clinic Mascot Men''s Black','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (50002,'/img/merch/heat_clinic_mascot_mens_red.jpg','Heat Clinic Mascot Men''s Red','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (50003,'/img/merch/heat_clinic_mascot_mens_silver.jpg','Heat Clinic Mascot Men''s Silver','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (60001,'/img/merch/heat_clinic_mascot_womens_black.jpg','Heat Clinic Mascot Women''s Black','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (60002,'/img/merch/heat_clinic_mascot_womens_red.jpg','Heat Clinic Mascot Women''s Red','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (60003,'/img/merch/heat_clinic_mascot_womens_silver.jpg','Heat Clinic Mascot Women''s Silver','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (70001,'/img/merch/the_da_vinci_code.jpg','Heat Clinic Mascot Women''s Black','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (70002,'/img/merch/the_da_vinci_code.jpg','Heat Clinic Mascot Women''s Red','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (70003,'/img/merch/the_da_vinci_code.jpg','Heat Clinic Mascot Women''s Silver','primary');

INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (100001,'/img/books/resonate.jpg','Resonate','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (100002,'/img/books/The_Humane_Interface.jpg','The Humane Interface','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (100003,'/img/books/environmental_psychology.gif','Environmental Psychology','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (100004,'/img/books/recurrency.jpg','Recurrency','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (100005,'/img/books/BPMN.jpg','BPMN','primary');
INSERT INTO BLC_MEDIA (MEDIA_ID, URL, TITLE, ALT_TEXT) VALUES (100006,'/img/books/catch_22.jpg','Catch 22','primary');

------------------------------------------------------------------------------------------------------------------
-- Load Catalog - Step 5:  Mapping for product to media
-- ========================================================
------------------------------------------------------------------------------------------------------------------
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (1,101,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (2,201,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (3,301,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (4,401,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (5,501,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (6,601,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (7,701,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (8,801,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (9,901,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (10,1001,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (11,1101,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (12,1201,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (13,1301,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (14,1401,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (15,1501,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (16,1601,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (17,1701,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (18,1801,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (19,1901,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (20,2001,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (21,2101,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (22,2201,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (1,102,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (2,202,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (3,302,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (4,402,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (5,502,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (6,602,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (7,702,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (8,802,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (9,902,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (10,1002,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (11,1102,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (12,1202,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (13,1302,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (14,1402,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (15,1502,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (16,1602,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (17,1702,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (18,1802,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (19,1902,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (20,2002,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (21,2102,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (22,2202,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (2,203,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (2,204,'alt3');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (2,205,'alt4');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (2,206,'alt5');

INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (100,10001,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (200,20002,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (300,30003,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (400,40002,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (500,50003,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (600,60001,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (100,10002,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (200,20001,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (300,30001,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (400,40001,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (500,50001,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (600,60002,'alt1');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (100,10003,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (200,20003,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (300,30002,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (400,40003,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (500,50002,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (600,60003,'alt2');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (700,70003,'alt2');

INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (1000,100001,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (2000,100002,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (3000,100003,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (4000,100004,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (5000,100005,'primary');
INSERT INTO BLC_SKU_MEDIA_MAP (BLC_SKU_SKU_ID, MEDIA_ID, MAP_KEY) VALUES (6000,100006,'primary');

INSERT INTO BLC_URL_HANDLER(URL_HANDLER_ID, INCOMING_URL, NEW_URL, URL_REDIRECT_TYPE) VALUES (1, '/googlePerm', 'http://www.google.com', 'REDIRECT_PERM');
INSERT INTO BLC_URL_HANDLER(URL_HANDLER_ID, INCOMING_URL, NEW_URL, URL_REDIRECT_TYPE) VALUES (2, '/googleTemp', 'http://www.google.com', 'REDIRECT_TEMP');
INSERT INTO BLC_URL_HANDLER(URL_HANDLER_ID, INCOMING_URL, NEW_URL, URL_REDIRECT_TYPE) VALUES (3, '/insanity', '/hot-sauces/insanity_sauce', 'FORWARD');
INSERT INTO BLC_URL_HANDLER(URL_HANDLER_ID, INCOMING_URL, NEW_URL, URL_REDIRECT_TYPE) VALUES (4, '/jalepeno', '/hot-sauces/hurtin_jalepeno_hot_sauce', 'REDIRECT_TEMP');

INSERT INTO BLC_SEARCH_INTERCEPT(SEARCH_REDIRECT_ID, PRIORITY,SEARCH_TERM, URL) VALUES (1,1, 'insanity', '/hot-sauces/insanity_sauce');
INSERT INTO BLC_SEARCH_INTERCEPT(SEARCH_REDIRECT_ID,PRIORITY, SEARCH_TERM, URL,ACTIVE_START_DATE,ACTIVE_END_DATE) VALUES (2,-10, 'new york', '/search?q=pace picante','1992-10-15 14:28:36','1999-10-15 21:28:36');

-----------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
-- RELATED PRODUCT - DATA (featured products for right-hand side display)
-----------------------------------------------------------------------------------------------------------------------------------
-- Adding to root category
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (1, 1, 1, 18);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (2, 2, 1, 15);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (3, 3, 1, 200);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (4, 4, 1, 100);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (11, 5, 1, 700);

-- Adding to merchandise category
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (5, 1, 2003, 4);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (12, 1, 2003, 22);

-- Adding to hot-sauces category
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (8, 4, 2002, 500);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (9, 4, 2002, 200);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (10, 4, 2002, 300);

-- Adding to book category
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (13, 1, 2007, 1000);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (14, 1, 2007, 2000);
INSERT INTO BLC_PRODUCT_FEATURED(FEATURED_PRODUCT_ID, SEQUENCE, CATEGORY_ID, PRODUCT_ID)  VALUES (15, 2, 2007, 5000);


-- Adding a 20% off sale to Merchandise category to fit the Shirts Special Homepage Banner
INSERT INTO BLC_OFFER (OFFER_ID, APPLIES_TO_RULES, OFFER_NAME, START_DATE, END_DATE, OFFER_TYPE, OFFER_DISCOUNT_TYPE, OFFER_VALUE, OFFER_DELIVERY_TYPE, STACKABLE, COMBINABLE_WITH_OTHER_OFFERS, OFFER_PRIORITY, APPLY_OFFER_TO_MARKED_ITEMS, APPLY_TO_SALE_PRICE, USES, MAX_USES) VALUES (1,NULL, 'Shirts Special',CURRENT_DATE,'2020-01-01 00:00:00','ORDER_ITEM','PERCENT_OFF',20,'AUTOMATIC',1,1,10,0,0,0,0);

INSERT INTO BLC_OFFER_ITEM_CRITERIA (OFFER_ITEM_CRITERIA_ID, ORDER_ITEM_MATCH_RULE, QUANTITY) VALUES (1, 'MVEL.eval("toUpperCase()",discreteOrderItem.category.name)==MVEL.eval("toUpperCase()","merchandise")', 1);

INSERT INTO BLC_TAR_CRIT_OFFER_XREF (OFFER_ITEM_CRITERIA_ID, OFFER_ID) VALUES (1, 1);

-- Sample fulfillment option
INSERT INTO BLC_FULFILLMENT_OPTION (FULFILLMENT_OPTION_ID, NAME, LONG_DESCRIPTION, USE_FLAT_RATES, FULFILLMENT_TYPE) VALUES (1, 'First Class', '2 - 7 Days', 0, 'PHYSICAL');
INSERT INTO BLC_FULFILLMENT_OPTION (FULFILLMENT_OPTION_ID, NAME, LONG_DESCRIPTION, USE_FLAT_RATES, FULFILLMENT_TYPE) VALUES (2, 'Priority', '2 - 5 Days', 0, 'PHYSICAL');
INSERT INTO BLC_FULFILLMENT_OPTION (FULFILLMENT_OPTION_ID, NAME, LONG_DESCRIPTION, USE_FLAT_RATES, FULFILLMENT_TYPE) VALUES (3, 'Express', '1 - 2 Days', 0, 'PHYSICAL');

INSERT INTO BLC_FULFILLMENT_OPTION_FIXED (FULFILLMENT_OPTION_ID, PRICE) VALUES (1, 5.00);
INSERT INTO BLC_FULFILLMENT_OPTION_FIXED (FULFILLMENT_OPTION_ID, PRICE) VALUES (2, 10.00);
INSERT INTO BLC_FULFILLMENT_OPTION_FIXED (FULFILLMENT_OPTION_ID, PRICE) VALUES (3, 20.00);
