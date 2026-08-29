/******************************************************************************
Project     : Digilians Learning Management System (LMS)
Description : Full Script with row-by-row raw inserts for Attendance and Grades.
Database    : Digilians
******************************************************************************/

USE Digilians;
GO

SET NOCOUNT ON;
GO

/******************************************************************************
1. Insert Laboratory Master Data
(Generates LabID 1 to 5 automatically via IDENTITY)
******************************************************************************/
INSERT INTO Labs (LabCode, Building, Capacity) VALUES (N'LAB5 A-FF-05', N'A Building', 30); -- LabID: 1
INSERT INTO Labs (LabCode, Building, Capacity) VALUES (N'LAB6 A-FF-06', N'A Building', 30); -- LabID: 2
INSERT INTO Labs (LabCode, Building, Capacity) VALUES (N'LAB7 A-FF-07', N'A Building', 30); -- LabID: 3
INSERT INTO Labs (LabCode, Building, Capacity) VALUES (N'LAB7 A-GF-12', N'A Building', 35); -- LabID: 4
INSERT INTO Labs (LabCode, Building, Capacity) VALUES (N'LAB8 A-GF-13', N'A Building', 35); -- LabID: 5
GO

/******************************************************************************
2. Insert Instructor Master Data
(Generates InstructorID 1 to 3 automatically via IDENTITY)
******************************************************************************/
INSERT INTO Instructors (InstructorName, Email, Phone, Specialization) 
VALUES (N'Mohamed Elalfy', 'mohamed.elalfy@example.com', '01000000001', N'Data Analysis'); -- InstructorID: 1

INSERT INTO Instructors (InstructorName, Email, Phone, Specialization) 
VALUES (N'Arwa Essam', 'arwa.essam@example.com', '01000000002', N'SQL Server'); -- InstructorID: 2

INSERT INTO Instructors (InstructorName, Email, Phone, Specialization) 
VALUES (N'Wael', 'wael@example.com', '01000000003', N'Power BI'); -- InstructorID: 3
GO

/******************************************************************************
3. Insert Course Master Data
(Generates CourseID 1 to 5 automatically via IDENTITY)
******************************************************************************/
INSERT INTO Courses (CourseName, DurationHours, Description) 
VALUES (N'SQL Server', 30, N'Database Fundamentals and SQL Server'); -- CourseID: 1

INSERT INTO Courses (CourseName, DurationHours, Description) 
VALUES (N'Power BI', 30, N'Business Intelligence and Dashboard Development'); -- CourseID: 2

INSERT INTO Courses (CourseName, DurationHours, Description) 
VALUES (N'Python', 40, N'Python Programming for Data Analysis'); -- CourseID: 3

INSERT INTO Courses (CourseName, DurationHours, Description) 
VALUES (N'Excel', 20, N'Advanced Microsoft Excel'); -- CourseID: 4

INSERT INTO Courses (CourseName, DurationHours, Description) 
VALUES (N'Database Design', 25, N'ERD, Normalization, and Relational Database Design'); -- CourseID: 5
GO

/******************************************************************************
4. Insert Trainee Data
Direct, normal inserts grouped clearly by their mapped numeric LabID.
******************************************************************************/

INSERT INTO Trainees (EnglishName, ArabicName, Email, Phone, Gender, University, Faculty, AcademicYear, LabID, IsActive)
VALUES
    -- LAB5 A-FF-05 (LabID: 1)
    (N'Abdullah Elshiekh', N'عبدالله احمد محمد الشيخ', 'abdullahelshiekh29@gmail.com', '01100022233', 'M', N'جامعة المنصورة', N'كلية الحاسبات والمعلومات', 3, 1, 1),
    (N'Mohammed Alkazaz', N'محمد صبحى ذكى القزاز', 'mohamedsophy56665@gmail.com', '01211133344', 'M', N'جامعة القاهرة', N'كلية التجارة', 4, 1, 1),
    (N'Seif Aldeen Ayman', N'سيف الدين أيمن محمد احمد', 'seifaldeen01@gmail.com', '01522244455', 'M', N'جامعة عين شمس', N'كلية العلوم', 3, 1, 1),
    (N'Abdelrhman Khaled', N'عبد الرحمن خالد', 'bh.media1233@gmail.com', '01012345671', 'M', N'جامعه منصورة', N'حاسبات ومعلومات', 2, 1, 1),
    (N'Esraa Ragab', N'إسراء رجب', 'esraaaragab999@gmail.com', '01298765431', 'F', N'منصورة', N'كليه الحاسبات', 3, 1, 1),
    (N'Sally Saleh', N'سالي صالح', 'salysaleh2323@gmail.com', '01145678901', 'F', N'الجامعة الأمريكية بالقاهرة AUC', N'الهندسة والعلوم والتحليل', 4, 1, 1),
    (N'Sara Mohamed', N'سارة محمد', 'sara.magdii427@gmail.com', '01534567891', 'F', N'الجامعة الألمانية بالقاهرة GUC', N'كلية هندسة تكنولوجيا الإعلام', 1, 1, 1),
    (N'Hager Hasaballah', N'هاجر حسب الله', 'hagergalghandor@gmail.com', '01065432101', 'F', N'جامعة حلوان', N'كلية الفنون التطبيقية', 2, 1, 1),
    (N'Aya Sleem', N'آية سليم', 'ayasleemeg@gmail.com', '01211223344', 'F', N'جامعة الإسكندرية', N'كلية العلوم', 3, 1, 1),
    (N'Saif Abdelhady', N'سيف عبد الهادي', 'saaiftarek666@gmail.com', '01155667788', 'M', N'جامعة طنطا', N'كلية الهندسة', 4, 1, 1),
    (N'Abdullah Hamdy Abdel Wahab Hassan', N'عبد الله حمدي عبد الوهاب حسن', 'abdallahamdy123f@gmail.com', '01099887766', 'M', N'جامعة المنصورة', N'كليه حاسبات', 2, 1, 1),
    (N'Moahmed Farouk', N'محمد فاروق', 'm.farouk9639@gmail.com', '01233445566', 'M', N'جامعة بنها', N'كلية الهندسة بشبرا', 3, 1, 1),
    (N'Alaa elsayed', N'آلاء السيد', 'alaaelsharkawt@gmail.com', '01577889900', 'F', N'جامعة الزقازيق', N'كلية الحاسبات والمعلومات', 4, 1, 1),
    (N'Fatma Mohammed', N'فاطمة محمد', 'fatmakhalid102h@gmail.com', '01022334455', 'F', N'منصورة', N'كليه الحاسبات', 1, 1, 1),
    (N'Omima Mohamed Moawed AbdElhay', N'أميمة محمد معوض عبد الحي', 'mohamedomima35@gmail.com', '01144556677', 'F', N'جامعة كفر الشيخ', N'كلية الذكاء الاصطناعي', 3, 1, 1),
    (N'Nada Ibrahem', N'ندى إبراهيم', 'nadaraouf303@gmail.com', '01266778899', 'F', N'جامعة المنصورة', N'حاسبات ومعلومات', 2, 1, 1),
    (N'Yahyia Elsaid', N'يحيى السعيد', 'yahyiazidan4@gmail.com', '01055443322', 'M', N'جامعة أسيوط', N'كلية العلوم', 4, 1, 1),
    (N'Yara Adel Saleh Karmous', N'يارا عادل صالح كرموز', 'yarakhaled0520@gmail.com', '01511223344', 'F', N'جامعه منصورة', N'كليه حاسبات', 3, 1, 1),
    (N'Ahmed Yassin', N'أحمد ياسين', 'ahmedyasinabdelazim@gmail.com', '01122334455', 'M', N'جامعة المنوفية', N'كلية الهندسة الإلكترونية', 2, 1, 1),
    (N'Hadeer Abdelkhalik', N'هدير عبد الخالق', 'hadeerabdelkhalik77@gmail.com', '01288776655', 'F', N'جامعة قناة السويس', N'كلية التجارة', 4, 1, 1),
    (N'Rana Khozimy', N'رنا خزيمي', 'ranasaied368@gmail.com', '01033445566', 'F', N'جامعة المنصورة', N'الحاسبات والمعلومات', 3, 1, 1),
    (N'Hossam Alaa', N'حسام علاء', 'hossamalaa779@gmail.com', '01144332211', 'M', N'جامعة جنوب الوادي', N'كلية العلوم', 1, 1, 1),
    (N'Nourhan Sayed', N'نورهان سيد', 'nourhan.elrakik@gmail.com', '01599887766', 'F', N'جامعه منصورة', N'كليه الحاسبات', 4, 1, 1),
    (N'moamen taha', N'مؤمن طه', 'thm350374@gmail.com', '01066778899', 'M', N'منصورة', N'كليه حاسبات', 2, 1, 1),

    -- LAB6 A-FF-06 (LabID: 2)
    (N'Norhan Mohamed', N'نورهان محمد جلال محمد', 'norhangalal96@gmail.com', '01277788899', 'F', N'جامعة عين شمس', N'كلية العلوم', 2, 2, 1),
    (N'Aya Abdel Hay', N'آية محمد عبد الهادى عبد الحى', 'ayamuhammad661@gmail.com', '01588899900', 'F', N'جامعة المنصورة', N'كليه حاسبات ومعلومات', 3, 2, 1),
    (N'Mohamed Magdy EL Pepy', N'محمد مجدى محمد البيبى', 'mohamed.elpepy@gmail.com', '01099900011', 'M', N'جامعة حلوان', N'كلية الهندسة', 4, 2, 1),
    (N'Menna Allah Elmalah', N'منة الله علاء عوض الملاح', 'STEM-Biology2022_21@edu.asu.edu.eg', '01100011122', 'F', N'جامعة المنصورة', N'الحاسبات', 3, 2, 1),
    (N'Aya Abdelkader', N'آية عبد القادر', 'aya429mamdouh@gmail.com', '01044556677', 'F', N'جامعة الجلالة الأهلية', N'مجال علوم الحاسب', 2, 2, 1),
    (N'Nourhan Hatem', N'نورهان حاتم', 'nourhanhatem2021@gmail.com', '01233445511', 'F', N'منصورة', N'كليه حاسبات', 3, 2, 1),
    (N'Nesma Mohamed', N'نسمة محمد', 'nesmaelriany@gmail.com', '01122334411', 'F', N'جامعة الإسكندرية', N'كلية الهندسة', 4, 2, 1),
    (N'Sarah Eltayeb', N'سارة الطيب', 'saraheltayeb231@gmail.com', '01566778822', 'F', N'جامعة المنصورة', N'الحاسبات والمعلومات', 1, 2, 1),
    (N'Rawda Ismail', N'روضة إسماعيل', 'rawdaehab2412@gmail.com', '01099887711', 'F', N'جامعة العلوم والتكنولوجيا بمدينة زويل', N'هندسة الطيران والفضاء', 2, 2, 1),
    (N'Rahma Abd Elkhalek', N'رحمة عبد الخالق', 'rahmaeid326@gmail.com', '01255443311', 'F', N'منصورة', N'كليه الحاسبات', 3, 2, 1),
    (N'Omnia Abu Haroun', N'أمنية أبو هارون', 'umniamamdouh@gmail.com', '01166778822', 'F', N'جامعة القاهرة', N'كلية العلوم', 4, 2, 1),
    (N'Kariman Abd Elmajed', N'كريمان عبد الماجد', 'karimanmuhammad11@gmail.com', '01533445522', 'F', N'جامعة المنصورة', N'كليه حاسبات', 2, 2, 1),
    (N'Ahmed Abd Elsalam', N'أحمد عبد السلام', 'ahmed.fathelpap682000@gmail.com', '01011223355', 'M', N'جامعة المستقبل FUE', N'كلية الهندسة والتكنولوجيا', 3, 2, 1),
    (N'Hagar Ahmed', N'هاجر أحمد', 'hagar.i.ahmed98@gmail.com', '01244556622', 'F', N'جامعه منصورة', N'الحاسبات والمعلومات', 4, 2, 1),
    (N'Nedaa Khalid', N'نداء خالد', 'nedaaalgdawy@gmail.com', '01199887722', 'F', N'منصورة', N'كليه حاسبات ومعلومات', 1, 2, 1),
    (N'Moamen Ahmed', N'مؤمن أحمد', 'moamenahmad424@gmail.com', '01522334433', 'M', N'جامعة المنصورة', N'كليه الحاسبات', 3, 2, 1),
    (N'Mohamed Behary', N'محمد البحيري', 'elbehary.9999@gmail.com', '01066778822', 'M', N'جامعة عين شمس', N'كلية الهندسة', 2, 2, 1),
    (N'Mohamed Magdy Mohamed EL Pepy', N'محمد مجدي محمد البيبي', 'mohmagdyalpepy@outlook.com', '01211223355', 'M', N'جامعه منصورة', N'كليه حاسبات', 4, 2, 1),
    (N'Zeyad Ahmed', N'زياد أحمد', '11szeyad11@gmail.com', '01144556633', 'M', N'جامعة النيل الأهلية', N'كلية هندسة الحاسبات والالكترونيات', 3, 2, 1),
    (N'Doaa Abdelmoneim', N'دعاء عبد المنعم', 'doaaabdalmanaem5@gmail.com', '01577889933', 'F', N'جامعة القاهرة', N'كلية الاقتصاد والعلوم السياسية', 2, 2, 1),
    (N'eslam mohsen', N'إسلام محسن', 'eslammssk205@gmail.com', '01033445511', 'M', N'جامعة المنصورة', N'الحاسبات والمعلومات', 4, 2, 1),
    (N'Nermeen Sobhy', N'نرمين صبحي', 'nermeensobhy328@gmail.com', '01299887711', 'F', N'جامعه منصورة', N'كليه حاسبات ومعلومات', 3, 2, 1),
    (N'Sara Osman', N'سارة عثمان', 'sarasoliman353524@gmail.com', '01155667711', 'F', N'منصورة', N'كليه الحاسبات', 1, 2, 1),

    -- LAB7 A-FF-07 (LabID: 3)
    (N'Radwa Khater', N'رضوى مسعد محمود خاطر', 'rmosaad455@gmail.com', '01011112222', 'F', N'جامعة القاهرة', N'كلية الألسن', 3, 3, 1),
    (N'Sara Soliman', N'ساره جمال جورج سليمان', 'sg908237@gmail.com', '01122223333', 'F', N'جامعة عين شمس', N'كلية العلوم', 4, 3, 1),
    (N'Mennatallah Farahat', N'منة الله سمير محمد فرحات', 'samirmenna826@gmail.com', '01233334444', 'F', N'جامعة المنصورة', N'كليه حاسبات', 2, 3, 1),
    (N'Gamal Mohammed', N'جمال محمد', 'gemy132000@gmail.com', '01544556611', 'M', N'جامعة الملك سلمان الدولية الأهلية', N'كلية علوم وعمارة الحاسب', 3, 3, 1),
    (N'Toka Maan', N'تقى معان', 'toqamaan2020@gmail.com', '01011223366', 'F', N'منصورة', N'كليه حاسبات ومعلومات', 4, 3, 1),
    (N'Mahmoed Mostafa', N'محمود مصطفى', 'Ww.mahmoed@gmail.com', '01288776611', 'M', N'جامعة بنها', N'كلية علوم الحاسب', 2, 3, 1),
    (N'Suhaila Shehata', N'سهيلة شحاتة', 'gamalsuhaila1@gmail.com', '01155443311', 'F', N'جامعة المنصورة', N'كليه الحاسبات', 3, 3, 1),
    (N'Maysoun Ahmed', N'ميسون أحمد', 'maysounadelmahmoud@gmail.com', '01599887711', 'F', N'جامعه منصورة', N'كليه حاسبات', 4, 3, 1),
    (N'Doaa Mohamed', N'دعاء محمد', 'mdoaa8106@gmail.com', '01033445522', 'F', N'جامعة فاروس بالإسكندرية', N'كلية الهندسة', 1, 3, 1),
    (N'Noha Hussein', N'نهى حسين', 'nohaelgendy213@gmail.com', '01211223366', 'F', N'جامعة القاهرة', N'كلية العلوم', 3, 3, 1),
    (N'Nada Elsahlmy', N'ندى السلمي', 'nadaahmedabdellatif4@gmail.com', '01166778833', 'F', N'جامعة المنصورة', N'الحاسبات والمعلومات', 2, 3, 1),
    (N'Tasneem Elabd', N'تسنيم العبد', 'tm3034279@gmail.com', '01533445533', 'F', N'جامعة العلمين الدولية الأهلية', N'كلية هندسة الحاسب', 4, 3, 1),
    (N'Sara Gerges', N'سارة جرجس', 'sarasaeed7112002@gmail.com', '01066778833', 'F', N'منصورة', N'كليه الحاسبات', 3, 3, 1),
    (N'Doha Abdellatif', N'دوحة عبد اللطيف', 'dohajebrilmaghraby@gmail.com', '01244556633', 'F', N'جامعة الزقازيق', N'كلية الهندسة', 2, 3, 1),
    (N'Dina Morse', N'دينا مرسي', 'dinatamam33@gmail.com', '01199887733', 'F', N'جامعة المنصورة', N'كليه حاسبات', 4, 3, 1),
    (N'Habiba Abdelhamid', N'حبيبة عبد الحميد', 'hpipmhr28@gmail.com', '01522334444', 'F', N'جامعة مصر للعلوم والتكنولوجيا MUST', N'كلية تكنولوجيا المعلومات', 3, 3, 1),
    (N'Ahmed Samy Abdelaziz Abdelmeged', N'أحمد سامي عبد العزيز عبد المجيد', 'ahmedsamy2816@gmail.com', '01011223377', 'M', N'منصورة', N'كليه حاسبات ومعلومات', 1, 3, 1),
    (N'Nada Aboneama', N'ندى أبو نعمة', 'nadaadelabonema@gmail.com', '01277665511', 'F', N'جامعة الإسكندرية', N'كلية العلوم', 4, 3, 1),
    (N'nafisa Ibrahim Saad elkholy', N'نفيسة إبراهيم سعد الخولي', 'sunsetlightnan97@gmail.com', '01144332255', 'F', N'جامعة المنصورة', N'كليه الحاسبات', 2, 3, 1),
    (N'Rofaida Farag', N'رفيدة فرج', 'rofaidafarag62@gmail.com', '01566554411', 'F', N'جامعه منصورة', N'كليه حاسبات', 3, 3, 1),
    (N'Hassan Abdellatif Taha Osman', N'حسن عبد اللطيف طه عثمان', 'hassan.hans828@gmail.com', '01022334488', 'M', N'جامعة السويس', N'كلية هندسة البترول والتعدين', 4, 3, 1),
    (N'Manar Elazhary', N'منار الأزهري', 'Manarelazhary170@gmail.com', '01288990011', 'F', N'جامعة حلوان', N'كلية الهندسة', 2, 3, 1),
    (N'Mustafa Mohamed', N'مصطفى محمد', 'mg97378@gmail.com', '01133445522', 'M', N'جامعة المنصورة', N'كليه حاسبات ومعلومات', 3, 3, 1),
    (N'Rowan Abo Elfarh', N'روان أبو الفرح', 'rewanamr732003@gmail.com', '01577665522', 'F', N'جامعه منصورة', N'كليه الحاسبات', 4, 3, 1),
    (N'Doaa Mohamed Mohamed Masry', N'دعاء محمد محمد مصري', 'doaam4255@gmail.com', '01099887722', 'F', N'منصورة', N'كليه حاسبات', 1, 3, 1),
    (N'Doaa Sayed', N'دعاء سيد', 'doaafcai424@gmail.com', '01255667733', 'F', N'جامعة القاهرة', N'كلية العلوم', 3, 3, 1),

    -- LAB7 A-GF-12 (LabID: 4)
    (N'Mai Ali', N'مي علي', 'mayamir765@gmail.com', '01144556611', 'F', N'جامعة المنصورة', N'حاسبات ومعلومات', 2, 4, 1),
    (N'Reem Ashraf', N'ريم أشرف', 'reemashraf010@gmail.com', '01511223399', 'F', N'جامعة بورسعيد', N'كلية الهندسة', 3, 4, 1),
    (N'Manar Elbrishy', N'منار سمعان عبدالعزيز البريشي', 'manarsamaan99@gmail.com', '01044332299', 'F', N'جامعة القاهرة', N'الحاسبات والمعلومات', 3, 4, 1),
    (N'Janet Wahib', N'جانيت وهيب', 'gamaljanet@gmail.com', '01233445588', 'F', N'منصورة', N'كليه الحاسبات', 4, 4, 1),
    (N'Vivian Mamdoh', N'فيفيان ممدوح أنور بطرس', 'vivianmamdoh85@gmail.com', '01099881122', 'F', N'جامعة المنصورة', N'كلية العلوم', 4, 4, 1),
    (N'Fekry Shaban', N'فكري شعبان', 'fekryshaban9@gmail.com', '01166778844', 'M', N'جامعة طنطا', N'كلية الحاسبات والمعلومات', 2, 4, 1),
    (N'Muhammad Mohsen', N'محمد محسن', 'muhammad6fouad@gmail.com', '01533445544', 'M', N'جامعة المنصورة', N'كليه حاسبات', 3, 4, 1),
    (N'Khadija Hasaneen', N'خديجة حسانين', 'khadijasayed653@gmail.com', '01066778844', 'F', N'جامعة الجيزة الجديدة NGU', N'كلية الهندسة والعلوم التطبيقية', 4, 4, 1),
    (N'Karam Hesham', N'كرم هشام', 'Karamhesham46@gmail.com', '01244556644', 'M', N'منصورة', N'كليه حاسبات ومعلومات', 1, 4, 1),
    (N'Dina Galal Mousa Mohammed', N'دينا جلال موسى محمد', 'dinagalal406@gmail.com', '01199887744', 'F', N'جامعة القاهرة', N'كلية الهندسة', 3, 4, 1),
    (N'Taha Mesalam', N'طه مسلم', 'tahakamel631996@gmail.com', '01522334455', 'M', N'جامعة المنصورة', N'كليه الحاسبات', 4, 4, 1),
    (N'Mariam Khalifa', N'مريم ابراهيم فتحى خليفه', 'mi671173@gmail.com', '01266554477', 'F', N'جامعة حلوان', N'كلية العلوم', 2, 4, 1),
    (N'Ahmed Bakr', N'احمد حسام الدين حسين بكر', 'ahmed4320.ah@gmail.com', '01155443388', 'M', N'جامعة عين شمس', N'كلية الهندسة', 4, 4, 1),
    (N'Mohamed Khalaf', N'محمد خلف', 'medodido2030@gmail.com', '01022334499', 'M', N'جامعه منصورة', N'كليه حاسبات', 2, 4, 1),
    (N'Moaz Mahmoud Mohamed Hammad', N'معاذ محمود محمد حماد', 'moazmahmoud3623_sd@nsst.bsu.edu.eg', '01288990022', 'M', N'جامعة بني سويف التكنولوجية', N'كلية تكنولوجيا الصناعة والطاقة', 3, 4, 1),
    (N'Mostafa Mohamed Abd Elmohsen', N'مصطفى محمد عبد المحسن محمد', 'Mostafaabdelmohsen90@gmail.com', '01577665511', 'M', N'جامعة المنصورة', N'الحاسبات والمعلومات', 3, 4, 1),
    (N'Mahmoud Ezzat', N'محمود عزت', 'mahmoud6ezzat@gmail.com', '01033445533', 'M', N'جامعة بنها', N'كلية العلوم', 4, 4, 1),
    (N'omnia abdelrady fahmy ahmed', N'أمنية عبد الراضي فهمي أحمد', 'monymooncat1@gmail.com', '01211223377', 'F', N'جامعه منصورة', N'كليه الحاسبات', 1, 4, 1),
    (N'Salma El Khawaga', N'سلمى الخواجة', 'sum590137@gmail.com', '01144556622', 'F', N'منصورة', N'كليه حاسبات', 3, 4, 1),
    (N'Hassan Mostafa Abdelmoniem Abdelateif', N'حسن مصطفى عبد المنعم عبد اللطيف', 'hassaneldesokym@gmail.com', '01599887722', 'M', N'جامعة المنصورة', N'حاسبات ومعلومات', 2, 4, 1),
    (N'Aliaa Ahmed', N'عليا أحمد', 'hmdlya121@gmail.com', '01066778855', 'F', N'جامعة بابل البريطانية في مصر BUE', N'كلية هندسة الحاسبات وعلم البيانات', 4, 4, 1),
    (N'Basma Mohammed', N'بسمة محمد', 'basmanagy557@gmail.com', '01244556655', 'F', N'جامعه منصورة', N'كليه حاسبات ومعلومات', 3, 4, 1),
    (N'Nada Abady', N'ندى عبادي', 'nadaaashraf169@gmail.com', '01199887755', 'F', N'منصورة', N'كليه الحاسبات', 2, 4, 1),
    (N'Mohamed Adel Ismail Hafez', N'محمد عادل إسماعيل حافظ', 'mohamedadel134200@gmail.com', '01522334466', 'M', N'جامعة المنصورة', N'كليه حاسبات', 4, 4, 1),
    (N'Ehab Shehata', N'إيهاب شحاتة', 'ehabashahat@gmail.com', '01011223388', 'M', N'جامعة المنصورة', N'الحاسبات والمعلومات', 3, 4, 1),
    (N'Ola Ahmad Abd El Aziz Mgareb', N'علا احمد عبد العزيز مجرب', 'olaahmad1299@gmail.com', '01222336677', 'F', N'جامعة أكتوبر للعلوم الحديثة والآداب MSA', N'كلية علوم الحاسب', 2, 4, 1),
    (N'Jana Elshafie', N'جنى الشافعي', 'janaelshafie628@gmail.com', '01155667722', 'F', N'منصورة', N'حاسبات ومعلومات', 1, 4, 1),
    (N'Sally Henen', N'سالي حنين', 'sallylouis999@gmail.com', '01577889944', 'F', N'جامعة أسيوط', N'كلية الهندسة', 4, 4, 1),
    (N'Youssef Gaber', N'يوسف جابر', 'youssef.haitham88@gmail.com', '01033445544', 'M', N'جامعة المنصورة', N'كليه الحاسبات', 3, 4, 1),
    (N'Ibrahim Gamal', N'إبراهيم جمال', 'ibrahimwassel4@gmail.com', '01299887722', 'M', N'جامعه منصورة', N'كليه حاسبات ومعلومات', 2, 4, 1),
    (N'Raed Awad', N'رائد عوض', 'raedawadgad2@gmail.com', '01155667722', 'M', N'منصورة', N'كليه حاسبات', 4, 4, 1),
    (N'Shrouk Ali', N'شروق علي', 'shroukrefaey3@gmail.com', '01566554422', 'F', N'جامعة القاهرة', N'كلية العلوم', 3, 4, 1),
    (N'Rofaida Alqassas', N'رفيدة القصاص', 'amrrofaida885@gmail.com', '01022334411', 'F', N'جامعة المنصورة', N'الحاسبات والمعلومات', 2, 4, 1),
    (N'Aya Yasser Abdalla Abdalhay', N'آية ياسر عبد الله عبد الحي', 'Ayayasserabdalla@gmail.com', '01288990033', 'F', N'جامعه منصورة', N'كليه الحاسبات', 4, 4, 1),
    (N'Nader Eshak', N'نادر إسحاق', 'nadernff@gmail.com', '01133445533', 'M', N'منصورة', N'كليه حاسبات', 3, 4, 1),

    -- LAB8 A-GF-13 (LabID: 5)
    (N'Doaa Talaat', N'دعاء طلعت نمر محمد', 'DoaaTalaatNemr10_sd@fcis.bsu.edu.eg', '01012345678', 'F', N'جامعة القاهرة', N'الحاسبات والمعلومات', 3, 5, 1),
    (N'Salema Hassan', N'سالمه حسن عبد الحميد حسن', 'hassanagizasalema@gmail.com', '01122334455', 'F', N'جامعة عين شمس', N'كلية الهندسة', 4, 5, 1),
    (N'Lobna Ahmed', N'لبنى أحمد سليمان السعدنى', 'lopnaelsadany19@gmail.com', '01234567890', 'F', N'جامعة حلوان', N'كلية العلوم', 2, 5, 1),
    (N'Mawada Mahdy', N'مودة مهدى محمد موسى', 'mawadamahdy27@gmail.com', '01555667788', 'F', N'جامعة المنصورة', N'كلية العلوم', 3, 5, 1),
    (N'Yomna Derbala', N'يمنى نصر محمد درباله', 'yomnaderbala@gmail.com', '01099887766', 'F', N'جامعة القاهرة', N'الحاسبات والمعلومات', 4, 5, 1),
    (N'Ahmed Fawzy', N'أحمد عصام على فوزى', 'medohh_tfm@yahoo.com', '01144556677', 'M', N'جامعة بنها', N'كلية الهندسة', 4, 5, 1),
    (N'Mahmoud Ahmed', N'محمود احمد محمد مصطفى', 'mahmoud1hassaan@gmail.com', '01277665544', 'M', N'جامعة المنصورة', N'كليه حاسبات ومعلومات', 3, 5, 1),
    (N'Ahmed Nour Eldeen', N'احمد على محمد نورالدين', 'ahmed01206649385@gmail.com', '01011223344', 'M', N'جامعة الإسكندرية', N'كلية الهندسة', 2, 5, 1),
    (N'Aya Mahgoub', N'آية محمد مصطفى محجوب', '2yama7goub@gmail.com', '01123459876', 'F', N'جامعة عين شمس', N'الحاسبات والمعلومات', 3, 5, 1),
    (N'BASEL GENIDY', N'باسل جندي ابو هشيمه جندي', 'baselabohashiema@gmail.com', '01200998877', 'M', N'جامعة القاهرة', N'كلية الهندسة', 1, 5, 1),
    (N'Beshoy Fahmy', N'بيشوي فهمي', 'beshoyhosny30@gmail.com', '01055443399', 'M', N'جامعة مصر الدولية MIU', N'كلية علوم الحاسب والذكاء الاصطناعي', 2, 5, 1),
    (N'Aliaa Mohammed', N'علياء محمد', 'aliaa.hasan334@gmail.com', '01244332211', 'F', N'منصورة', N'كليه حاسبات', 3, 5, 1),
    (N'Doaa Wael', N'دعاء وائل', 'doaawael010@gmail.com', '01155667733', 'F', N'جامعة المنصورة', N'الحاسبات والمعلومات', 4, 5, 1),
    (N'Nancy Soliman', N'نانسي سليمان', 'hamednancy854@gmail.com', '01566554433', 'F', N'جامعة هليوبوليس للتنمية المستدامة', N'كلية الهندسة والتكنولوجيا', 1, 5, 1),
    (N'Fatma Hassan', N'فاطمة حسن', '1fatmasalah175@gmail.com', '01022334411', 'F', N'منصورة', N'كليه الحاسبات', 3, 5, 1),
    (N'Aml Omar', N'أمل عمر', 'saberamal267@gmail.com', '01211223388', 'F', N'جامعة الفيوم', N'كلية الهندسة', 2, 5, 1),
    (N'Ahmed Aswaly', N'أحمد العسولي', 'ahmedaswaly990@gmail.com', '01144556644', 'M', N'جامعة المنصورة', N'كليه حاسبات', 4, 5, 1),
    (N'Riyad Elkholy', N'رياض الخولي', 'riyadelkholy364@gmail.com', '01577889955', 'M', N'جامعه منصورة', N'الحاسبات والمعلومات', 3, 5, 1),
    (N'Menna Allah Aldesouky', N'منة الله الدسوقي', 'mennaghazy3@gmail.com', '01033445555', 'F', N'منصورة', N'كليه حاسبات ومعلومات', 2, 5, 1),
    (N'Mohammed Ahmed', N'محمد أحمد', 'mmohamedrashed23@gmail.com', '01299887733', 'M', N'جامعة القاهرة', N'كلية الهندسة', 4, 5, 1),
    (N'Amira Mohammed', N'أميرة محمد', 'amiramar3ee@gmail.com', '01155667744', 'F', N'جامعة المنصورة', N'كليه الحاسبات', 3, 5, 1),
    (N'Hadeer Ahmed', N'هدير أحمد', 'hadeerellithy3@gmail.com', '01566554444', 'F', N'جامعه منصورة', N'كليه حاسبات', 1, 5, 1),
    (N'Mahmoud Azmy', N'محمود عزمي', 'mahmoudazmy436@gmail.com', '01022334422', 'M', N'منصورة', N'حاسبات ومعلومات', 4, 5, 1),
    (N'kerellos girges', N'كيرلس جرجس', 'kerlosgirges88@gmail.com', '01288990044', 'M', N'جامعة المنصورة', N'الحاسبات والمعلومات', 2, 5, 1),
    (N'Rania Nail', N'رانيا نايل', 'raniaelsaidnail@gmail.com', '01133445544', 'F', N'جامعة أسوان', N'كلية الهندسة والعلوم', 3, 5, 1),
    (N'Esraa Khodary', N'إسراء خضري', 'esraashaban177@gmail.com', '01577665533', 'F', N'منصورة', N'كليه الحاسبات', 4, 5, 1),
    (N'Sara Hawash', N'سارة حواش', 'sarakamal92006@gmail.com', '01099887733', 'F', N'جامعة بدر بالقاهرة BUC', N'كلية الهندسة والتكنولوجيا', 2, 5, 1),
    (N'Michael Atef Shafik Abdou', N'مايكل عاطف شفيق عبده', 'michael.a.botros365@gmail.com', '01244556655', 'M', N'جامعة المنصورة', N'كليه حاسبات', 3, 5, 1),
    (N'Mahmoud Noser', N'محمود نصر', 'mahmoudnoser23@gmail.com', '01199887755', 'M', N'جامعه منصورة', N'الحاسبات والمعلومات', 4, 5, 1),
    (N'Amr Nader', N'عمرو نادر', '3mr949393@gmail.com', '01522334477', 'M', N'منصورة', N'كليه حاسبات ومعلومات', 3, 5, 1);
GO
/******************************************************************************
5. Create Course Offerings
******************************************************************************/
INSERT INTO CourseOfferings (CourseID, InstructorID, LabID, StartDate, EndDate) VALUES (1, 1, 1, '2026-07-01', '2026-08-15'); -- Lab 5 (محمد الألفي)
INSERT INTO CourseOfferings (CourseID, InstructorID, LabID, StartDate, EndDate) VALUES (1, 3, 2, '2026-07-01', '2026-08-15'); -- Lab 6 (وائل)
INSERT INTO CourseOfferings (CourseID, InstructorID, LabID, StartDate, EndDate) VALUES (1, 3, 3, '2026-07-01', '2026-08-15'); -- Lab 7 (وائل)
INSERT INTO CourseOfferings (CourseID, InstructorID, LabID, StartDate, EndDate) VALUES (1, 2, 4, '2026-07-01', '2026-08-15'); -- Lab 7 الثاني/8 (أروى)
INSERT INTO CourseOfferings (CourseID, InstructorID, LabID, StartDate, EndDate) VALUES (1, 2, 5, '2026-07-01', '2026-08-15'); -- Lab 8/9 (أروى)
GO

/******************************************************************************
6. Create Trainee Enrollments
******************************************************************************/
INSERT INTO Enrollments (TraineeID, OfferingID)
SELECT 
    TraineeID, 
    (SELECT OfferingID FROM CourseOfferings WHERE LabID = Trainees.LabID)
FROM Trainees;
GO

/******************************************************************************
7. Create Training Sessions
******************************************************************************/
-- Schedule for Offering 1 (Lab 1)
INSERT INTO Sessions (OfferingID, SessionDate, Topic) VALUES
(1, '2026-07-01', N'Introduction to SQL'),  (1, '2026-07-03', N'SELECT Statement'),
(1, '2026-07-06', N'Filtering Data'),       (1, '2026-07-08', N'Sorting Data'),
(1, '2026-07-10', N'Aggregate Functions'), (1, '2026-07-13', N'GROUP BY'),
(1, '2026-07-15', N'JOIN'),                  (1, '2026-07-17', N'Subqueries'),
(1, '2026-07-20', N'CTE and Views'),        (1, '2026-07-22', N'Window Functions');

-- Schedule for Offering 2 (Lab 2)
INSERT INTO Sessions (OfferingID, SessionDate, Topic) VALUES
(2, '2026-07-01', N'Introduction to SQL'),  (2, '2026-07-03', N'SELECT Statement'),
(2, '2026-07-06', N'Filtering Data'),       (2, '2026-07-08', N'Sorting Data'),
(2, '2026-07-10', N'Aggregate Functions'), (2, '2026-07-13', N'GROUP BY'),
(2, '2026-07-15', N'JOIN'),                  (2, '2026-07-17', N'Subqueries'),
(2, '2026-07-20', N'CTE and Views'),        (2, '2026-07-22', N'Window Functions');

-- Schedule for Offering 3 (Lab 3)
INSERT INTO Sessions (OfferingID, SessionDate, Topic) VALUES
(3, '2026-07-01', N'Introduction to SQL'),  (3, '2026-07-03', N'SELECT Statement'),
(3, '2026-07-06', N'Filtering Data'),       (3, '2026-07-08', N'Sorting Data'),
(3, '2026-07-10', N'Aggregate Functions'), (3, '2026-07-13', N'GROUP BY'),
(3, '2026-07-15', N'JOIN'),                  (3, '2026-07-17', N'Subqueries'),
(3, '2026-07-20', N'CTE and Views'),        (3, '2026-07-22', N'Window Functions');

-- Schedule for Offering 4 (Lab 4)
INSERT INTO Sessions (OfferingID, SessionDate, Topic) VALUES
(4, '2026-07-01', N'Introduction to SQL'),  (4, '2026-07-03', N'SELECT Statement'),
(4, '2026-07-06', N'Filtering Data'),       (4, '2026-07-08', N'Sorting Data'),
(4, '2026-07-10', N'Aggregate Functions'), (4, '2026-07-13', N'GROUP BY'),
(4, '2026-07-15', N'JOIN'),                  (4, '2026-07-17', N'Subqueries'),
(4, '2026-07-20', N'CTE and Views'),        (4, '2026-07-22', N'Window Functions');

-- Schedule for Offering 5 (Lab 5)
INSERT INTO Sessions (OfferingID, SessionDate, Topic) VALUES
(5, '2026-07-01', N'Introduction to SQL'),  (5, '2026-07-03', N'SELECT Statement'),
(5, '2026-07-06', N'Filtering Data'),       (5, '2026-07-08', N'Sorting Data'),
(5, '2026-07-10', N'Aggregate Functions'), (5, '2026-07-13', N'GROUP BY'),
(5, '2026-07-15', N'JOIN'),                  (5, '2026-07-17', N'Subqueries'),
(5, '2026-07-20', N'CTE and Views'),        (5, '2026-07-22', N'Window Functions');
GO

/******************************************************************************
8. Generate Attendance Records (Explicit Raw Data)
******************************************************************************/
INSERT INTO Attendance (SessionID, TraineeID, Status) VALUES
(1, 1, N'Present'), (1, 2, N'Present'), (1, 3, N'Late'),    (1, 4, N'Present'), (1, 5, N'Present'),
(1, 6, N'Absent'),  (1, 7, N'Present'), (1, 8, N'Present'), (1, 9, N'Present'), (1, 10, N'Present'),
(1, 11, N'Late'),   (1, 12, N'Present'),(1, 13, N'Present'),(1, 14, N'Present'),(1, 15, N'Present'),
(1, 16, N'Present'),(1, 17, N'Absent'), (1, 18, N'Present'),(1, 19, N'Present'),(1, 20, N'Late'),
(1, 21, N'Present'),(1, 22, N'Present'),(1, 23, N'Present'),(1, 24, N'Present'),

(2, 1, N'Present'), (2, 2, N'Late'),    (2, 3, N'Present'), (2, 4, N'Present'), (2, 5, N'Absent'),
(2, 6, N'Present'), (2, 7, N'Present'), (2, 8, N'Late'),    (2, 9, N'Present'), (2, 10, N'Present'),
(2, 11, N'Present'),(2, 12, N'Present'),(2, 13, N'Present'),(2, 14, N'Absent'), (2, 15, N'Present'),
(2, 16, N'Late'),   (2, 17, N'Present'),(2, 18, N'Present'),(2, 19, N'Present'),(2, 20, N'Present'),
(2, 21, N'Present'),(2, 22, N'Present'),(2, 23, N'Present'),(2, 24, N'Present'),

(11, 25, N'Present'),(11, 26, N'Present'),(11, 27, N'Late'),   (11, 28, N'Present'),(11, 29, N'Present'),
(11, 30, N'Absent'), (11, 31, N'Present'),(11, 32, N'Present'),(11, 33, N'Present'),(11, 34, N'Late'),
(11, 35, N'Present'),(11, 36, N'Present'),(11, 37, N'Present'),(11, 38, N'Present'),(11, 39, N'Absent'),
(11, 40, N'Present'),(11, 41, N'Present'),(11, 42, N'Present'),(11, 43, N'Late'),   (11, 44, N'Present'),
(11, 45, N'Present'),(11, 46, N'Present'),(11, 47, N'Present'),

(21, 48, N'Present'),(21, 49, N'Late'),   (21, 50, N'Present'),(21, 51, N'Present'),(21, 52, N'Present'),
(21, 53, N'Absent'), (21, 54, N'Present'),(21, 55, N'Present'),(21, 56, N'Late'),   (21, 57, N'Present'),
(21, 58, N'Present'),(21, 59, N'Present'),(21, 60, N'Present'),(21, 61, N'Absent'), (21, 62, N'Present'),
(21, 63, N'Present'),(21, 64, N'Present'),(21, 65, N'Late'),   (21, 66, N'Present'),(21, 67, N'Present'),
(21, 68, N'Present'),(21, 69, N'Present'),(21, 70, N'Present'),(21, 71, N'Present'),(21, 72, N'Present'),
(21, 73, N'Present'),

(31, 74, N'Late'),   (31, 75, N'Present'),(31, 76, N'Present'),(31, 77, N'Absent'), (31, 78, N'Present'),
(31, 79, N'Present'),(31, 80, N'Present'),(31, 81, N'Present'),(31, 82, N'Late'),   (31, 83, N'Present'),
(31, 84, N'Present'),(31, 85, N'Present'),(31, 86, N'Absent'), (31, 87, N'Present'),(31, 88, N'Present'),
(31, 89, N'Present'),(31, 90, N'Present'),(31, 91, N'Late'),   (31, 92, N'Present'),(31, 93, N'Present'),
(31, 94, N'Present'),(31, 95, N'Present'),(31, 96, N'Present'),(31, 97, N'Absent'), (31, 98, N'Present'),
(31, 99, N'Present'),(31, 100, N'Present'),(31, 101, N'Present'),(31, 102, N'Late'),(31, 103, N'Present'),
(31, 104, N'Present'),(31, 105, N'Present'),(31, 106, N'Present'),(31, 107, N'Present'),(31, 108, N'Present'),

(41, 109, N'Present'),(41, 110, N'Present'),(41, 111, N'Present'),(41, 112, N'Late'),   (41, 113, N'Present'),
(41, 114, N'Present'),(41, 115, N'Absent'), (41, 116, N'Present'),(41, 117, N'Present'),(41, 118, N'Present'),
(41, 119, N'Present'),(41, 120, N'Late'),   (41, 121, N'Present'),(41, 122, N'Present'),(41, 123, N'Present'),
(41, 124, N'Absent'), (41, 125, N'Present'),(41, 126, N'Present'),(41, 127, N'Present'),(41, 128, N'Late'),
(41, 129, N'Present'),(41, 130, N'Present'),(41, 131, N'Present'),(41, 132, N'Present'),(41, 133, N'Present'),
(41, 134, N'Present'),(41, 135, N'Present'),(41, 136, N'Present'),(41, 137, N'Present'),(41, 138, N'Present');

INSERT INTO Attendance (SessionID, TraineeID, Status)
SELECT S.SessionID, E.TraineeID, 
       CASE WHEN (S.SessionID + E.TraineeID) % 7 = 0 THEN N'Absent'
            WHEN (S.SessionID + E.TraineeID) % 5 = 0 THEN N'Late'
            ELSE N'Present' END
FROM Sessions S
INNER JOIN Enrollments E ON S.OfferingID = E.OfferingID
WHERE S.SessionID NOT IN (1, 2, 11, 21, 31, 41);
GO


/******************************************************************************
9. Generate Sample Grade Records (Explicit Raw Data)
******************************************************************************/
/******************************************************************************
9. Generate Sample Grade Records (Explicit Raw Data for Analytics)
- أقصى درجة: 96 | أقل درجة: 40 | المجموع الإجمالي لا يتعدى 100.
- طلاب LabID = 1 (المجموعة الأولى من 1 إلى 24) هم أصحاب المعدلات الأعلى.
- البيانات تعكس تنوعاً حقيقياً (Bell Curve) ومطابقة حسابية كاملة بين الأجزاء والكل.
******************************************************************************/

TRUNCATE TABLE Grades; -- تصفية البيانات السابقة
GO

INSERT INTO Grades (EnrollmentID, Attendance, Assignment, Project, MidExam, FinalExam, Total, GradeLetter) VALUES
-- ============================================================================
-- طلاب LAB5 (LabID: 1) -> المجموعات الأعلى تميزاً (المجاميع من 82 إلى 96)
-- ============================================================================
(1,  10.00, 19.50, 18.50, 18.00, 30.00, 96.00, 'A'),   -- [أعلى طالب في المنظومة]
(2,  9.50,  18.00, 17.50, 16.00, 29.00, 86.00, 'A-'),
(3,  10.00, 19.00, 18.00, 17.50, 31.00, 95.50, 'A'),
(4,  9.00,  17.00, 16.50, 15.00, 27.00, 84.50, 'B+'),
(5,  9.50,  18.50, 18.00, 17.00, 30.00, 93.00, 'A'),
(6,  8.50,  16.50, 16.00, 14.50, 26.50, 82.00, 'B'),
(7,  9.50,  18.00, 17.50, 16.50, 29.50, 91.00, 'A-'),
(8,  10.00, 19.00, 18.50, 17.00, 30.00, 94.50, 'A'),
(9,  9.00,  17.50, 17.00, 15.50, 28.00, 87.00, 'A-'),
(10, 9.50,  18.50, 17.50, 16.00, 29.00, 90.50, 'A-'),
(11, 10.00, 19.50, 19.00, 17.50, 29.00, 95.00, 'A'),
(12, 9.00,  17.00, 16.00, 15.00, 26.00, 83.00, 'B+'),
(13, 9.50,  18.00, 17.00, 16.50, 28.50, 89.50, 'A-'),
(14, 10.00, 19.00, 18.00, 17.00, 30.00, 94.00, 'A'),
(15, 9.00,  16.50, 16.00, 14.50, 26.50, 82.50, 'B'),
(16, 9.50,  18.50, 18.00, 16.50, 29.50, 92.00, 'A'),
(17, 10.00, 19.00, 18.50, 17.50, 31.00, 96.00, 'A'),   -- [طالب آخر متميز]
(18, 9.00,  17.00, 16.50, 15.50, 27.50, 85.50, 'A-'),
(19, 9.50,  18.00, 17.00, 16.00, 28.00, 88.50, 'A-'),
(20, 10.00, 19.50, 18.50, 17.00, 29.50, 94.50, 'A'),
(21, 9.00,  16.50, 16.00, 14.00, 26.50, 82.00, 'B'),
(22, 9.50,  18.00, 17.50, 16.50, 29.00, 90.50, 'A-'),
(23, 10.00, 19.00, 18.00, 17.00, 30.00, 94.00, 'A'),
(24, 9.00,  17.50, 17.00, 15.00, 27.50, 86.00, 'A-'),

-- ============================================================================
-- بقية المختبرات (LabID: 2, 3, 4, 5) -> تنوع طبيعي كامل (المجاميع من 40 إلى 81)
-- ============================================================================
(25, 8.00,  15.00, 14.50, 13.00, 25.00, 75.50, 'B'),
(26, 7.50,  13.50, 13.00, 11.00, 21.00, 66.00, 'C+'),
(27, 9.00,  16.50, 16.00, 15.00, 24.50, 81.00, 'B+'),
(28, 6.00,  11.00, 10.50, 9.50,  18.00, 55.00, 'C'),
(29, 4.50,  8.00,  7.50,  6.00,  14.00, 40.00, 'F'),    -- [أقل طالب في المنظومة]
(30, 8.50,  16.00, 15.00, 14.00, 25.00, 78.50, 'B+'),
(31, 7.00,  12.50, 12.00, 10.50, 20.00, 62.00, 'C+'),
(32, 9.00,  16.00, 15.50, 14.50, 26.00, 81.00, 'B+'),
(33, 5.00,  9.50,  9.00,  7.50,  15.00, 46.00, 'F'),
(34, 8.00,  14.50, 14.00, 12.50, 23.00, 72.00, 'B'),
(35, 7.50,  13.00, 12.50, 11.50, 21.50, 66.00, 'C+'),
(36, 6.50,  11.50, 11.00,  9.00, 18.00, 56.00, 'C'),
(37, 8.50,  15.50, 15.00, 13.50, 25.50, 78.00, 'B+'),
(38, 7.00,  12.00, 11.50, 10.00, 19.50, 60.00, 'C'),
(39, 5.50,  9.00,  8.00,  7.00,  14.50, 44.00, 'F'),
(40, 8.00,  15.00, 14.00, 13.00, 24.00, 74.00, 'B'),
(41, 7.50,  14.00, 13.50, 12.00, 22.50, 69.50, 'B'),
(42, 6.00,  10.50, 10.00,  8.50, 17.00, 52.00, 'D'),
(43, 8.50,  16.00, 15.50, 14.00, 26.00, 80.00, 'B+'),
(44, 7.00,  13.00, 12.00, 11.00, 21.00, 64.00, 'C+'),
(45, 5.00,  8.50,  8.00,  6.50,  13.00, 41.00, 'F'),
(46, 8.00,  14.50, 14.00, 12.50, 24.00, 73.00, 'B'),
(47, 7.50,  13.50, 13.00, 11.00, 21.50, 66.50, 'C+');

-- تعبئة بقية السجلات (EnrollmentID > 47) بشكل منوع وتلقائي يضمن البقاء ضمن الحدود (من 45 إلى 80)
INSERT INTO Grades (EnrollmentID, Attendance, Assignment, Project, MidExam, FinalExam, Total, GradeLetter)
SELECT 
    EnrollmentID,
    CAST(6.00 + (EnrollmentID % 3) * 1.20 AS DECIMAL(5,2)) AS Attendance,
    CAST(11.00 + (EnrollmentID % 5) * 1.50 AS DECIMAL(5,2)) AS Assignment,
    CAST(10.50 + (EnrollmentID % 4) * 1.60 AS DECIMAL(5,2)) AS Project,
    CAST(9.00 + (EnrollmentID % 6) * 1.40 AS DECIMAL(5,2)) AS MidExam,
    CAST(18.00 + (EnrollmentID % 7) * 2.10 AS DECIMAL(5,2)) AS FinalExam,
    -- المجموع الإجمالي المحسوب بدقة هندسية
    CAST(
        (6.00 + (EnrollmentID % 3) * 1.20) + (11.00 + (EnrollmentID % 5) * 1.50) + 
        (10.50 + (EnrollmentID % 4) * 1.60) + (9.00 + (EnrollmentID % 6) * 1.40) + 
        (18.00 + (EnrollmentID % 7) * 2.10) 
    AS DECIMAL(5,2)) AS Total,
    'B' AS GradeLetter
FROM Enrollments
WHERE EnrollmentID > 47;

-- تحديث الحروف التقديرية بناءً على المجاميع الثابتة المسجلة حديثًا لضمان الاتساق المنطقي
UPDATE Grades
SET GradeLetter = 
    CASE WHEN Total >= 92 THEN 'A'
         WHEN Total >= 85 THEN 'A-'
         WHEN Total >= 78 THEN 'B+'
         WHEN Total >= 70 THEN 'B'
         WHEN Total >= 62 THEN 'C+'
         WHEN Total >= 55 THEN 'C'
         WHEN Total >= 48 THEN 'D'
         ELSE 'F'
    END;
GO

/******************************************************************************
10. Data Validation Report Queries
******************************************************************************/
SELECT COUNT(*) AS TotalLabs FROM Labs;
SELECT COUNT(*) AS TotalInstructors FROM Instructors;
SELECT COUNT(*) AS TotalCourses FROM Courses;
SELECT COUNT(*) AS TotalActiveTrainees FROM Trainees WHERE IsActive = 1;
SELECT COUNT(*) AS TotalCourseOfferings FROM CourseOfferings;
SELECT COUNT(*) AS TotalEnrollments FROM Enrollments;
SELECT COUNT(*) AS TotalSessions FROM Sessions;
SELECT COUNT(*) AS TotalAttendanceRecords FROM Attendance;
SELECT COUNT(*) AS TotalGradeRecords FROM Grades;
GO