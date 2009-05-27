-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 27, 2009 at 11:59 PM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jobboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `OrderIndex` tinyint(4) NOT NULL,
  `Parent` tinyint(4) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `OrderIndex` (`OrderIndex`),
  KEY `Parent` (`Parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=8 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `Name`, `OrderIndex`, `Parent`, `lft`, `rgt`) VALUES
(2, 'Programare', 1, 0, 0, 0),
(3, 'Design', 2, 0, 0, 0),
(4, 'Management', 3, 0, 0, 0),
(5, 'Administrare', 4, 0, 0, 0),
(1, 'Uncategorized', 6, 0, 0, 0),
(7, 'SEO', 5, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `ToApply` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Company` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `Location` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `Public` tinyint(1) NOT NULL DEFAULT '0',
  `ExpirationDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ChangedBy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ChangedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CodeStamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PostedAt` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=10 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`ID`, `CategoryID`, `Title`, `Description`, `ToApply`, `Company`, `Location`, `Public`, `ExpirationDate`, `ChangedBy`, `ChangedDate`, `STATUS`, `CodeStamp`, `PostedAt`) VALUES
(1, 2, 'Programator .NET Senior', 'Ce ne dorim de la tine:\r\n\r\n• Sa fii o persoana cu o inteligenta peste medie, dinamica, autonoma, cu abilitati bune de comunicare si lucru in echipa\r\n• Sa fii pasionat de tehnologia informatiei si programare\r\n• Preferabil student sau absolvent al unei facultati cu profil tehnic : Automatica, Matematica, Cibernetica\r\n• Sa ai cunostinţe avansate in: .Net Framwork 1.1/2.0/3.5, C#, ADO.Net, ASP.Net, SQL Server 2000-2005, T-SQL, OOP\r\n• Sa ai minim 1 an experienţă în dezvoltare software folosind Microsoft .Net Framework\r\n• Sa ai minim 2 an experienţă în dezvoltare software\r\n• Sa cunosti elemente de structuri de date si algoritmi\r\n• Sa ai o gandire sistematica\r\n• Sa cunosti limba engleza\r\n\r\nConstituie un avantaj:\r\n\r\n• cursurile de pregătire\r\n• participarea sau premiile obtinute la concursuri de informatica\r\n• certificările Microsoft\r\n\r\nResponsabilitatile tale vor fi:\r\n\r\n• Dezvoltarea aplicaţiilor conform specificaţiilor\r\n• Participarea la elaborarea specificaţiilor tehnice\r\n• Asigurarea calitatii codului dezvoltat\r\n• Participarea la deciziile tehnice in cadrul echipei\r\n• Tehnologiile:\r\n\r\no .Net Framework 3.5/2.0/1.1: C#, ASP.Net, Windows Forms, Web Services, COM+, HTML, JScript\r\no SQL 2005/2000, Reporting Services, SharePoint, Analysis Services\r\n\r\nCe iti oferim:\r\n\r\n* Pachet salarial motivant coroborat cu bonusuri substantiale\r\n* Program de training si coaching pe termen lung\r\n* Certificari\r\n* Program flexibil\r\n* Atmosfera de lucru profesionista\r\n* O echipa tanara si entuziasta\r\n\r\nCine suntem?\r\n\r\nSuntem o echipă experimentată, ambiţioasă si foarte dinamică de dezvoltatori software.\r\nSuntem o companie romanească specializată în dezvoltare de solutii software pentru organizaţii de dimensiuni medii si mari. Avem o baza solida de clienti in SUA, Canada, UK, Germania si Romania.\r\nSuntem o organizaţie bazată pe încredere, verticalitate şi determinare.\r\n\r\nCe ne diferenţiază?\r\n\r\n1. Respectul pentru munca noastră.\r\n2. Pasiunea pentru tehnologie.\r\n3. Credinţa că putem schimba lucrurile din jurul nostru prin determinare si muncă\r\n\r\nESSENSYS este un loc foarte potrivit pentru un inceput de cariera avand in vedere ca vei lucra intr-o atmosfera relaxata alaturi de o echipa foarte experimentata si pregatita tehnic. Echipa noastra este certificata 100% pe tehnologii Microsoft incepand cu MCSD (Microsoft Certified Solution Developer), MCDBA (Microsoft Certified Database Administrator) sau MCT (Microsoft Certified Trainer).\r\n\r\nPentru detalii: www.essensys.ro\r\nNe poti trimite CV-ul si la adresa de mail jobs (at) essensys (dot) ro.', 'Ne poti trimite CV-ul si la adresa de mail jobs (at) essensys (dot) ro.', 'ESSENSYS Software', 'Bucuresti', 1, '0000-00-00 00:00:00', '', '2009-05-27 23:36:19', 0, '0000-00-00 00:00:00', '2009-05-27 22:52:40'),
(2, 2, 'Programator PHP', 'ITNT este in cautarea unui nou membru pentru echipa sa de dezvoltatori web.\r\nResponsabilitati:\r\n● Dezvoltare si intretinere de aplicatii web\r\n● Cercetare si implementare de noi tehnologii, standarde si tendinte in programarea web\r\n● Colaborare cu membrii echipei\r\n\r\nCerinte:\r\n\r\n● experienta de minim 2 ani in dezvoltarea de aplicatii web (avantaj pentru cei ce prezinta portofoliu de proiecte)\r\n● student sau absolvent Automatica, Electronica, Matematica-Informatica, Informatica aplicata\r\n● sunt necesare cunostinte solide de PHP, SQL (MySQL, PostgreSQL), HTML, JavaScript\r\n● constituie avantaj cunostinte de: XML, RSS, Apache, Linux, protocoale de comunicatie\r\n● cunostinte de limba engleza\r\n● responsabilitate si spirit de initiativa\r\n● dorinta de perfectionare si de realizare a unei cariere de succes in domeniu\r\n\r\nOferta (bonusuri, beneficii):\r\n\r\n● atmosfera relaxata\r\n● proiecte deosebit de interesante\r\n● bonuri de masa\r\n● acoperirea costurilor pentru cursuri si certificari de specialitate in domeniu', 'Trimite CV la email lucian [dot] todea [at] itnt [dot] ro', 'ITNT', 'Sibiu', 1, '0000-00-00 00:00:00', '', '2009-05-27 23:36:19', 0, '0000-00-00 00:00:00', '2009-05-27 22:53:33'),
(3, 5, 'Service Platform Engineer', 'Domeniul firmei: Telecomunicatii\r\n\r\nDescriere\r\nAccountable for the introduction of new services\r\n\r\n* Provide expertise for service proving and validation phases\r\n* Controls and validates software specifications et functionalities for new services\r\n* Responsible for test plan and organisation of proving phase\r\n* Issue new specifications for tools and services evolutions\r\n\r\nAccountable for standard operations and administration of service platforms\r\n\r\n* Real time analysis of faults and customer tickets\r\n* Initiates escalation process\r\n* Perform and drive preventative maintenance\r\n* Issue procedure\r\n* Will participate to 24*7 on call duties\r\n\r\nProfil	\r\nMain skills\r\nMaster at least one of the following : UNIX, LINUX/AIX\r\n\r\nExtended IT skills:\r\n* WAS and Dbase management: (oracle, Sybase, Mysql,…)\r\n* Web based applications: Apache, Java, messaging, DNS, FTP,…)\r\n* Langages: KSH, Perl, HTL, Java , XML\r\n* Knowledge of monitoring tools: HPOpenView, Patrol\r\n* Good English skills\r\n\r\nComplementary skills\r\n* Monitoring tools (Cacti, Fticheck, Nagios)\r\n* Virtualization system (VmWare)\r\n* Work in project mode\r\n* Crisis management\r\n\r\nAngajarea se face pe contract de 1 an, care se prelungeste ulterior.', 'cv la office@senior.ro sau online la www.senior.ro', 'Senior Tech', 'Bucuresti', 1, '0000-00-00 00:00:00', '', '2009-05-27 23:36:37', 0, '0000-00-00 00:00:00', '2009-05-27 22:54:41'),
(4, 2, 'Programator PHP pasionat', 'Experienţa se sedimentează în timp, sintaxa se perfecţionează pe parcurs, proiectele mari şi recunoaşterea vin mai mult ca sigur dar cel mai important eşti tu. Căutăm colegi deosebiţi, cu pasionaţi şi cu dorinţa continuă de autodepăşire.\r\n\r\nTrebuie să care să ai majoritatea dintre calităţile următoare pentru a trece de primul test: \r\n\r\n-	Bine organizat \r\n-	Optimist \r\n-	Capabil de a învăţa uşor \r\n-	Cu dorinţă de autodepăşire zilnică \r\n-	Serios, responsabil \r\n-	Cu simţul umorului \r\n-	Pasionat, la curent cu tendinţele în tehnologii web \r\n-	Sociabil \r\n\r\nLimitări tehnice(vă rugăm să nu aplicaţi dacă nu îndepliniţi mai mult de 60% din cerinţele de mai jos): \r\n\r\n-	(optional)Cunoştinţe excelente de XHTML/CSS(inclusiv lucrul fără tabele) \r\n-	Cunoştinţe bune de PHP/MySql \r\n-	Cunoştinţe de XML \r\n-	Cunoştinţe de AJAX(opţional, constituie avantaj) \r\n-	Cunoştinţe de bază SEO \r\n-	Lucrul folosind OOP \r\n-	Configurare Apache (în special .htaccess) e un plus \r\n-	Experienţă în lucru pe proiecte medii/mari ce se pot verifica \r\n-	Disciplină în lucru(standarde) şi respectarea strictă a deadlineurilor \r\n\r\nCe oferim: \r\nUn mediu de lucru relaxant, orientat pe fiecare echipă, încurajarea continuă a dezvoltării profesionale şi personale, lucru pe proiecte cu vizibilitate mare pe plan naţional şi nu numai. Şi binenţeles pachet salarial atractiv, cu bonusuri pe proiectele completate cu succes! Şi un şef care te înţelege şi te apreciază!', 'trimite-ţi CV la ciprian [dot] gavriliu [at] ptb [dot] ro', 'PlayTheBalls', 'Iasi', 1, '0000-00-00 00:00:00', '', '2009-05-27 23:36:19', 0, '0000-00-00 00:00:00', '2009-05-27 22:55:44'),
(5, 7, 'Search Engine Optimisation Strategist - Team Manager', 'Brief Job Description \r\nThe successful candidate will be responsible for the full time search engine optimisation success of our distinctly branded website. The SEO Strategist will be responsible for creating and implementing fundamentally sound SEO campaigns conducting and delegating tasks accordingly. This will be a hands on position that will have access to between two and three additional support staff who will be capable of performing content development and linking tasks as well as technical development and creative assets. \r\n\r\nCandidate Requirement and Qualifications \r\n• A minimum of a (2:1) Undergraduate degree, IT based qualifications (SEO, software, computer; \r\nengineering) or Post Graduate qualifications a distinct advantage; \r\n• Poses the ability to prioritise tasks and take action on the most important ones; \r\n• Impeccable time management and organisational skills; \r\n• Deadline-oriented; \r\n• Must be able to work using his/ her own initiative; \r\n• Strong critical thinking skills and problem solving abilities; \r\n• Excellent oral and written English communication skills; \r\n• Ability to smoothly go from working independently to working with others; \r\n• An understanding of project management - able to drive a concept from idea to completion; \r\n• Must be enthusiastic, hard-working and pay attention to detail; \r\n• Experience in working with clients and being involved in pitches an advantage; \r\n• Ability to delegate; \r\n• Willingness to work long term with the determination and passion for self development. \r\n\r\nAdditional skills and requirements \r\n• A minimum of 2-3 years of full-time SEO experience working for an e-commerce company; \r\n• A proven track record for increasing SEO traffic (examples and references will be requested). \r\n\r\nRole Requirements \r\n• SEO optimisation of the companies e-commerce properties; \r\n• Advanced understanding of how websites work and how technology can impact SEO; \r\n• Knowledge of all types of SEO methods as well as best practices; \r\n• Solid experience in on-page and off-page SEO with demonstrable results in the SERPs; \r\n• Working with the Editorial team in UK on content development to support SEO; \r\n• Pay Per Click management; \r\n• Link building; \r\n• Keyword research; \r\n• Competitive analysis; \r\n• Monitoring of search engine ranking and using the data to make actionable decisions; \r\n• Monitoring SEO traffic changes (day over day, week over week, and year over year); \r\n• Keeping up to date on the latest SEO trends and changes; \r\n• Other ad-hoc tasks. \r\n\r\nRewards and Benefits \r\nThe benefits offered to a perspective candidate for this position will be based on candidate’s experience and qualifications. We aim to invest considerable resources into staff development and training to ensure that our team members are amongst the best in the industry. We offer generous project based bonuses, as well as potential company shares for exceptional standard of work and commitment. \r\n\r\nCandidates must provide the following information: \r\n• Full Candidate CV; \r\n• 2 Professional References including 1 from a previous organisation/person the candidate has worked with on a search marketing-related project; \r\n• A short case study of at least one SEO campaign the candidate has worked on with specific results achieved; \r\n• URLs to at least two search terms in Google for which the candidate has managed to gain high search rankings for. Ensure the sites in which SEO was conducted are included; \r\n• An original written sample, 300 words long (subject completely unimportant); this is just to judge the candidate’s standard of English; \r\n• A covering letter explaining the reasons why the candidate should be chosen to take the position; \r\n• Also please include your username on any relevant search/ webmaster/ affiliate marketing forums. \r\n\r\nApplications without the required information will not be considered.', 'Trimite CV la email: hr@cambra.ro', 'CAMBRA', 'Not decided - ROMANIA', 1, '0000-00-00 00:00:00', '', '2009-05-27 23:27:15', 0, '0000-00-00 00:00:00', '2009-05-27 23:07:19'),
(6, 5, 'System Analyst/Administrator', 'Candidate Profile: \r\nTwo - three years experience with Domino / Lotus Notes (r6.5 – r8), Sametime (r6 - r7.5.1) and IBM Quickr is preferred. \r\nExperience with the following technologies is preferred: IBM Portal, IBM Lotus Workplace Web Content Management, Blackberry \r\nB.S. degree in Computer Science, Computer Information Systems or related field. \r\nEducation and/or experience in Windows operating system and Active Directory is preferred. \r\nFluency in English is required. \r\nPassport is required; occasional global travel - especially throughout Europe. \r\nMust be detailed-oriented and have excellent communication, analytical, problem-solving abilities. Self-motivation is important. \r\nMust work well in project teams; organized, logical and have the ability to work quickly and accurately in a fast moving and changing environment. \r\nRequires excellent customer service skills, aptitude and ability to learn and support systems and applications quickly. \r\n\r\nResponsibilities: \r\nSystem Analyst/Administrator responsible for configuring and maintaining the global collaboration systems. \r\nThis person will work with a global team to architect, integrate, maintain, and support systems such as messaging (Domino/Lotus Notes), portal (IBM Portal), instant messaging and screen sharing (IBM Sametime), team collaboration (Quickr) and other collaboration systems. \r\nImplementing, administering and maintaining electronic mail, groupware, and portal systems. Works closely with other resources to ensure maintenance of hardware, operating system, and backup/recovery systems. \r\nUser/group administration including: new user set-ups, user moves, policy administration, team space administration \r\nApplication maintenance/monitoring: updates/patches, archive scheduling/monitoring, disaster recovery scheduling/monitoring \r\nTroubleshooting and fixing system problems and service requests, and providing high-level technical support for unresolved help desk issues. \r\nFormulating and documenting standard procedures for messaging system administration \r\nIdentifying areas for enterprise-wide system improvements and upgrades, including trending analysis and capacity planning \r\nPlanning, documenting and testing appropriate disaster recovery and/or business continuity systems. \r\nSome after hours support including weekends is required. \r\nPrimary location for the job is at the company\\''s office in Brasov, Romania. \r\n\r\nAdvantages: \r\nCompetitive salary package.', 'Please apply directly or send your CV at: mondojob@mondojob.ro', 'Mondojob', 'Brasov', 1, '0000-00-00 00:00:00', '', '2009-05-27 23:14:09', 0, '0000-00-00 00:00:00', '2009-05-27 23:08:46'),
(7, 5, 'SYSTEM ADMINISTRATOR', 'Clientul nostru este un important dezvoltator de solutii de securitate si transfer securizat de date. \r\nPostul presupune activitati de instalare, configurare, upgrade si monitorizare a intregii infrastructuri IT, asistand totodata echipa de dezvoltatori pentru crearea de solutii de securitate optime pentru client. \r\n\r\nCerinte: \r\n-cunostinte atat teoretice cat si practice ce tin de retelistica si infrastructura: cablare, TCP/IP, protocoale internet si retelistica, firewall, routing; \r\n-foarte bune cunostinte de diverse platforme de operare (hard/soft); \r\n-experienta in administrare UNIX (de preferat Linux si Solaris); \r\n-experienta in shell scripting (de preferat bash scripting); reprezinta un plus experienta in alte tehnologii de scripting; \r\n-avantaj: experienta in lucrul cu baze de date Oracle; \r\n-avantaj:lucrul cu hardware Sun Microsystems si SO Solaris; \r\n-studii superioare tehnice; \r\n-experienta de minim 2 ani pe un post similar; \r\n-engleza scris si vorbit fluent; \r\n-abilitati de munca in echipa; \r\n-persoana analitica, atenta la detalii; \r\n-atitudine proactiva, dorinta de a invata tehnologii noi si de a se perfectiona.', 'Trimite CV la alexandra[arond]itex[punct]ro', 'ITex', 'Bucuresti', 1, '0000-00-00 00:00:00', '', '2009-05-27 23:14:06', 0, '0000-00-00 00:00:00', '2009-05-27 23:11:05'),
(8, 3, 'Flash Designer', 'Descriere job \r\nKubis este agentia de comunicare digitala full service, ce promite “idei spectaculoase cu rezultate concrete” pentru o piata regionala care sta sub presiunea bugetelor de media si care este interesata sa-si optimizeze costurile, in contextul transformarilor economice actuale. \r\n\r\nMai multe detalii despre noi si despre ceea ce facem gasesti pe www.kubisinteractive.com sau poze din sediul Kubis: www.afterconstruction.ro \r\n\r\nCautam un Flash Designer care se va alatura echipei de inca doi flasheri (designer si developer in AS3, Papervision si gaming – foarte experimentati), si va avea rolul de a implementa tween-uri pe baza unui script existent sau creat de el pentru bannere si website-urile dedicate clientilor nostri. Mediul de lucru este creativ si prietenos, la fel si environement-ul biroului. Locatia este foarte centrala. \r\n\r\n\r\nResponsabilitati \r\nPersoana pe care o cautam trebuie sa aiba: \r\n• cunostiinte solide de grafica vectoriala, animatie si grafica raster \r\n• experienta (si rapiditate) in crearea de bannere Flash \r\n• simt estetic, da dovada de creativitate dar si atentie la detalii \r\n• de preferat experienta in cadrul unei agentii interactive / portofoliu \r\n\r\n\r\nCerinte \r\nBeneficii: \r\n• Pachet salarial motivant \r\n• Alte beneficii: asigurare medicala Gold, telefon de serviciu. \r\n• Conditii de munca excelente \r\n• Mediu de lucru creativ, deschis, tanar \r\n• Posibilitatea de a evolua odata cu compania \r\n\r\nPortofoliul tau este cel mai pretios lucru pentru noi, asa ca ti-l vom cere odata cu aplicatia ta.', 'Trimite CV la email vlad.popovici@kubisinteractive.com', 'Kubis', 'Bucuresti', 1, '0000-00-00 00:00:00', '', '2009-05-27 23:36:58', 0, '0000-00-00 00:00:00', '2009-05-27 23:12:04'),
(9, 4, 'Software Development Manager - Adobe SaaS Infrastructure', 'As an Engineering Manager, you will be managing and leading a team of developers and quality engineers within the ASIT. You will have to recruit and mentor people to make them part of your team, as well as integrate contributors from other teams in the ASIT group. \r\n\r\nYou have to be very knowledgeable in scalable web architectures, distributed systems and patterns for enterprise application integration. \r\n\r\nYou will be responsible for taking specific product features through entire life cycle, from requirement analysis to delivery,\r\nmeeting the reliability, performance and quality targets required in our company. ASIT is a service providing features to \r\nnew Adobe SaaS products such as Photoshop Express and Dreamweaver InContextEditing. We expect you to lead the team to unexplored technological areas and develop innovative features. \r\n\r\nAs a people manager, you will be part of interview teams, keeping your direct reports motivated, performing appraisals for the team members and participating in management related activities in Adobe Romania. \r\n\r\nOn this job, you: \r\n\r\n* Will drive and perform efficient communication with US teams, provide team and feature status to management \r\n* Will lead the team, plan and manage its workload by assigning work, monitoring and resolving problems, anticipating and overcoming potential conflicts and roadblocks \r\n* Will conceive, review and contribute to architectural decisions and feature specifications, both from a functional and technical standpoint \r\n* Will have hands-on major contributions to the code deliverables and deployment process \r\n* Will mentor team members by providing knowledge and expertise \r\n* Will stay in touch with the latest technologies and trends, suggest new directions and solutions \r\n\r\nRequired Skills: \r\n\r\nFor this job we are searching for people with: \r\n\r\n* B.S or M.S. degree in Computer Sciences, Engineering or equivalent \r\n* 5+ years of software development experience \r\n* Proven people management skills in leading teams of 3 or more and projects of 6 man/months or more \r\n* Able to create, review and manage specifications for complex systems and negotiate conflicting features with multiple stakeholders \r\n* Proficient in server-side development (essentially Java, but Rails, PHP, Python, .NET, C++ etc. welcome) \r\n* Experience with Web Services and SOAs \r\n* Familiar with management of operational side for clusters of Linux servers located in remote datacenters \r\n* Experience with UGC workflows and problematic (privacy, abuse, etc.) is a big plus \r\n* Proficient in English \r\n\r\nBonuses &amp; benefits \r\n\r\nWe offer the opportunity to build a career in a rapidly expanding software company, working with international technology groups. Excellent benefits package including Stock Options Plan, Profit Sharing, Medical and Life insurance, and more. \r\n\r\nAdobe believes personal fulfillment and company success go hand in hand, sustaining one another. In fact, our dynamic, rewarding working environment is well known - including eight years on FORTUNE magazine\\\\\\''s \\\\\\"100 Best Companies to Work For\\\\\\" and other, similar accolades. By hiring the very best and brightest, Adobe continues to be a simply better place to work - creating a dynamic environment today and providing incentives for future achievement.', 'Trimite CV la hr@adobe.ro', 'Adobe Romania', 'Bucuresti', 1, '0000-00-00 00:00:00', '', '2009-05-27 23:40:34', 0, '0000-00-00 00:00:00', '2009-05-27 23:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `plugin_data`
--

DROP TABLE IF EXISTS `plugin_data`;
CREATE TABLE IF NOT EXISTS `plugin_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` varchar(4096) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `plugin_data`
--

INSERT INTO `plugin_data` (`id`, `plugin_name`, `option_name`, `option_value`) VALUES
(2, 'Twitter', 'softos', 'valuos'),
(3, 'Twitter', 'softos', 'valuos');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `password_salt` varchar(51) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `realname`, `password`, `password_salt`) VALUES
(2, 'bvali', 'Valentin Bora', '91096b8ec93efb8655604f1b39802eb4', 'rokfsfmuouklcywmxsctwsvpnagxtgbycmoqnhjglvusxqmhhv'),
(3, 'admin', 'Valentin Bora', '3207411add32d45b778d35c8d9286d3d', 'd033e22ae348aeb5660fc2140aec35850c4da997');
