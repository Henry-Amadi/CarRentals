-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 11:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Password@1', '2023-07-04 19:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'sophia.johnson@gmail.com', 11, '10/07/2023', '20/07/2023', 'Will Like to rent this for 10 days', 1, '2023-07-05 20:07:00'),
(5, 'liam.wilson@gmail.com', 12, '8/07/2023', '19/0/2023', 'Love to use this car for a business trip', 1, '2023-07-05 20:11:58'),
(6, 'olivia.smith@gmail.com', 13, '05/07/2023', '30/07/2023', 'Would like to rent for a business trip and party', 1, '2023-07-05 20:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Toyota ', '2023-07-04 20:25:08', '2023-07-04 20:26:47'),
(9, 'Ford', '2023-07-04 20:26:32', NULL),
(10, 'Chevrolet', '2023-07-04 20:27:37', NULL),
(11, 'Honda', '2023-07-04 20:27:47', NULL),
(12, 'Volkswagen', '2023-07-04 20:28:12', NULL),
(13, 'BMW', '2023-07-04 20:28:22', NULL),
(14, 'Mercedes-Benz', '2023-07-04 20:28:39', NULL),
(15, 'Audi', '2023-07-04 20:28:48', NULL),
(16, 'Nissan', '2023-07-04 20:28:55', NULL),
(17, 'Kia', '2023-07-04 20:29:01', NULL),
(18, 'Land Rover', '2023-07-04 20:29:16', NULL),
(19, 'Tesla', '2023-07-04 20:29:22', NULL),
(20, 'Lexus', '2023-07-04 20:29:55', NULL),
(21, 'Porsche', '2023-07-04 20:30:08', NULL),
(22, 'Ferrari', '2023-07-04 20:30:24', NULL),
(23, 'Lamborghini', '2023-07-04 20:30:43', NULL),
(24, 'Jeep', '2023-07-04 20:56:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Sophia Johnson', 'sophia.johnson@gmail.com', '0241234567', 'Love your services so much i would like to go in business with your guys', '2023-07-05 20:23:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p align=\"justify\"><ul><li><strong style=\"\"><font color=\"#990000\" style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">(1) ACCEPTANCE OF TERMS</font></strong></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Rental Agreement: By renting a vehicle from our Car Rental\r\nProject, you agree to abide by the terms and conditions outlined in the rental\r\nagreement. The rental agreement covers aspects such as rental duration, usage\r\nlimitations, payment terms, and responsibilities of both the renter and the\r\nrental company.</span></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Driver\'s Requirements: The renter must possess a valid\r\ndriver\'s license and be of legal driving age in the respective jurisdiction.\r\nThe driver\'s license must be presented at the time of rental, and any\r\nadditional drivers should be listed and meet the same requirements.</span></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Reservation and Cancellation: Reservations can be made in\r\nadvance through our online platform, and cancellations must be made within the\r\nspecified timeframe mentioned during the reservation process to avoid any\r\ncancellation charges. Failure to pick up the reserved vehicle without prior\r\nnotice may result in cancellation fees.&nbsp;</span></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Rental Duration and Extension: The rental duration begins at\r\nthe agreed-upon pick-up time and ends at the designated drop-off time. Any\r\nextensions must be requested in advance and are subject to vehicle\r\navailability. Additional rental charges may apply for extended periods.&nbsp;</span></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Vehicle Use and Restrictions: The rented vehicle should be\r\nused in a responsible and legal manner. It is strictly prohibited to use the\r\nvehicle for any illegal activities, racing, off-road driving, or under the influence\r\nof drugs or alcohol. Smoking and carrying pets may also be prohibited,\r\ndepending on the specific rental policies.&nbsp;</span></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Vehicle Condition and Return: The renter is responsible for\r\nreturning the vehicle in the same condition as received, with the fuel tank at\r\nthe agreed level and without any damages beyond normal wear and tear. Any\r\ndamage or loss to the vehicle during the rental period will be the renter\'s\r\nresponsibility, and appropriate charges may be applied.&nbsp;</span></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Insurance and Liability: Our Car Rental Project typically\r\noffers insurance coverage for the rented vehicle; however, the renter may be\r\nresponsible for a deductible in the event of an accident or damage. It is\r\nadvisable to review the insurance terms and coverage details provided in the\r\nrental agreement.&nbsp;</span></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Payment and Security Deposit: The renter is required to\r\nprovide a valid credit card for payment purposes and may be subject to a\r\nsecurity deposit. The deposit will be refunded upon the return of the vehicle\r\nin satisfactory condition, minus any applicable charges.&nbsp;</span></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Limitation of Liability: Our Car Rental Project is not\r\nliable for any loss, damage, or inconvenience caused during the rental period,\r\nincluding but not limited to personal belongings, accidents, delays, or\r\nmechanical breakdowns. However, we will make reasonable efforts to assist and\r\nresolve any issues that may arise.&nbsp;</span></li><li><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Governing Law and Jurisdiction: These terms and conditions\r\nare governed by the laws of the jurisdiction where the rental takes place. Any\r\ndisputes or claims arising from the rental agreement will be subject to the\r\nexclusive jurisdiction of the courts in that jurisdiction.</span></li></ul></p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '																				<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">At our Car Rental Project, we are committed to protecting\r\nthe privacy and personal information of our customers. This Privacy Policy\r\noutlines how we collect, use, disclose, and protect the information we collect\r\nfrom our users. By using our services, you agree to the terms of this Privacy\r\nPolicy.</span></p><p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">1. Information Collection:</span></p><p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">Personal Information: We may collect personal information\r\nsuch as your name, contact details, driver\'s license information, and payment\r\ninformation when you make a reservation or interact with our website or\r\ncustomer support.Usage Information: We may collect information about your\r\ninteractions with our website, including your IP address, browser type, device\r\ninformation, and usage patterns. This information helps us analyze and improve\r\nour services.</span></p><p class=\"MsoNormal\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">2. Use of Information:</span></p><p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">We use the collected information to facilitate and process\r\nyour car rental reservations, provide customer support, and improve our\r\nservices.&nbsp;We may use your contact information to send you important\r\nupdates, promotions, and newsletters related to our services. You can opt out of these communications at any time.&nbsp;We may use aggregated and anonymized data for statistical\r\nand analytical purposes to enhance our services and improve the user\r\nexperience.</span></p><p class=\"MsoNormal\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">3. Information Sharing:</span></p><p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">We may share your personal information with our trusted\r\npartners, service providers, and affiliates to facilitate your car rental\r\nreservation and provide requested services.&nbsp;We may share your information when required by law, or legal\r\nprocesses, or to protect our rights, safety, and property.&nbsp;We do not sell or rent your personal information to third\r\nparties for marketing purposes.</span></p><p class=\"MsoNormal\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">4. Data Security:&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">We implement industry-standard security measures to protect\r\nyour personal information from unauthorized access, loss, misuse, or\r\nalteration.&nbsp;We use secure socket layer (SSL) encryption technology to\r\nsafeguard your sensitive data during transmission.</span></p><p class=\"MsoNormal\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">5. Third-Party Links and Websites:</span></p><p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">Our website may contain links to third-party websites or\r\nservices. We are not responsible for the privacy practices or content of such\r\nthird-party sites. We encourage you to review the privacy policies of those\r\nwebsites.</span></p><p class=\"MsoNormal\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">6. Children\'s Privacy:</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">Our services are not intended for individuals under the age\r\nof 18. We do not knowingly collect or solicit personal information from\r\nchildren. If we become aware that we have collected personal information from a\r\nchild without parental consent, we will promptly delete such information.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">7. Changes to the Privacy Policy:</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">We reserve the right to update or modify this Privacy Policy\r\nat any time. We will notify you of any material changes through our website or\r\nother communication channels. Your continued use of our services after any\r\nchanges indicates your acceptance of the updated Privacy Policy.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">8. Contact Us:</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">If you have any questions, concerns, or requests regarding\r\nthis Privacy Policy or the handling of your personal information, please\r\ncontact us through the provided contact details.</span><o:p></o:p></p>\r\n										\r\n										'),
(3, 'About Us ', 'aboutus', '																				<div style=\"text-align: center;\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">Welcome to Online Car Rentals - Your Ultimate Destination for Hassle-Free Car Rentals</span></div><div style=\"text-align: center;\"><div style=\"text-align: center;\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">At Online Car Rentals, we understand that having access to a reliable and convenient car rental service can greatly enhance your travel experience. That\'s why we have created a user-friendly online platform that allows you to book your dream car with just a few clicks.</span></div><div style=\"text-align: center;\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">Our mission is to provide you with a seamless and hassle-free car rental experience. Whether you\'re planning a business trip, a family vacation, or simply need a temporary ride, we have a wide selection of vehicles to meet your needs and preferences.<br></span></div><div style=\"text-align: center;\"><div style=\"text-align: center;\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">Convenience is at the core of our service. With Online Car Rentals, you can browse through our extensive inventory of cars from the comfort of your own home. Our website features detailed information about each vehicle, including specifications, features, and rental rates. We believe in transparency, so you can be confident that the price you see is the price you pay - no hidden fees or surprises.</span></div><div style=\"text-align: center;\"><span style=\"font-size: medium; font-family: &quot;times new roman&quot;;\">Booking a car with Online Car Rentals is a breeze. Our intuitive and secure online reservation system allows you to select your desired dates, choose the vehicle that suits your requirements, and customize your rental with additional services such as GPS navigation or child seats. Rest assured that your reservation is confirmed instantly, and our dedicated team is ready to assist you every step of the way.</span></div></div></div>\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																																																																																<p class=\"MsoNormal\"></p><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">1. How old do I need to be to rent a car?</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">The minimum age requirement to rent a car varies depending\r\non the jurisdiction and the rental company\'s policy. Generally, it is between\r\n21 and 25 years old. Some companies may also have age restrictions for certain\r\nvehicle categories or additional fees for drivers under a certain age.</span></div></blockquote><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\"><br></span><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">2. What documents do I need to rent a car?&nbsp;</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">You will typically need a valid driver\'s license, a credit\r\ncard in the renter\'s name for payment and deposit purposes, and proof of\r\nidentification, such as a passport or national ID card. Additional\r\ndocumentation requirements may vary depending on the rental company and\r\nlocation.</span></div></blockquote><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\"><br></span><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">3. Can I add an additional driver to the rental?&nbsp;</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Yes, many car rental companies allow you to add an\r\nadditional driver to the rental agreement. The additional driver must meet the\r\nsame age and driver\'s license requirements as the primary driver and is usually\r\nsubject to an additional fee.</span></div></blockquote><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\"><br></span><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">4. Is insurance included in the rental price?&nbsp;</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Car rental companies typically offer basic insurance\r\ncoverage as part of the rental package. However, the extent of coverage and\r\ndeductible amount may vary. It is advisable to review the insurance terms\r\nprovided by the rental company and consider additional coverage options if\r\ndesired.</span></div></blockquote><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\"><br></span><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">5. What is the fuel policy?&nbsp;</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Fuel policies may vary among rental companies. Some may\r\nrequire you to return the vehicle with a full tank of fuel, while others may\r\nprovide options such as pre-purchasing a full tank or returning the vehicle\r\nwith the same fuel level as at pick-up. Failure to comply with the fuel policy\r\nmay result in additional charges.</span></div></blockquote><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\"><br></span><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">6. Can I rent a car one way and return it to a different\r\nlocation?&nbsp;</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Yes, many car rental companies offer one-way rentals,\r\nallowing you to pick up a vehicle at one location and return it to another.\r\nHowever, additional fees may apply, and availability may vary depending on the\r\nrental company and specific locations involved.</span></div></blockquote><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\"><br></span><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">7. What happens if the rental vehicle gets damaged during my\r\nrental period?&nbsp;</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">If the vehicle sustains damage beyond normal wear and tear\r\nduring your rental period, you may be held responsible for repair costs. It is\r\ncrucial to report any damage or accidents to the rental company immediately and\r\nfollow their instructions regarding insurance claims and repairs.</span></div></blockquote><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\"><br></span><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">8. Can I make changes or cancel my reservation?&nbsp;</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Most car rental companies allow changes or cancellations to\r\nreservations, although specific policies and associated fees may vary. It is\r\nadvisable to review the terms and conditions of your reservation or contact the\r\nrental company directly to inquire about their modification or cancellation\r\npolicies.</span></div></blockquote><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\"><br></span><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">9. What happens if I return the car late?&nbsp;</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">Late returns may result in additional charges, as rental companies\r\nusually have specific grace periods before considering it as an extra day. It\r\nis recommended to adhere to the agreed-upon drop-off time or inform the rental\r\ncompany in advance if you anticipate a delay.</span></div></blockquote><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\"><br></span><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">10. Can I rent a car with a debit card?&nbsp;</span><br></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div style=\"text-align: justify;\"><span style=\"font-family: &quot;times new roman&quot;; font-size: medium;\">While credit cards are typically the preferred payment\r\nmethod for car rentals, some rental companies accept debit cards. However,\r\ndebit card usage may be subject to additional requirements, such as a higher\r\nsecurity deposit or proof of return travel plans. It is advisable to check with\r\nthe rental company beforehand.</span></div></blockquote><div><p></p><p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n										</div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'sophia.johnson@gmail.om', '2023-07-05 20:10:05'),
(5, 'liam.wilson@gmail.com', '2023-07-05 20:11:11'),
(6, 'olivia.smith@gmail.com', '2023-07-05 20:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'sophia.johnson@gmail.com', 'I had an amazing experience with the car rental service! The process was seamless, and the vehicle was in excellent condition. The staff was friendly and professional, making the whole experience enjoyable. I highly recommend this car rental company for their exceptional service', '2023-07-05 20:05:56', 1),
(4, 'liam.wilson@gmail.com', 'Renting a car from this company was a breeze. The reservation process was simple, and the pick-up and drop-off were convenient. The car I rented was clean and well-maintained, providing a comfortable ride throughout my trip. I will definitely choose this car rental service again in the future', '2023-07-05 20:13:50', 1),
(5, 'olivia.smith@gmail.com', 'I was impressed with the level of customer service I received from this car rental company. The staff was helpful, answering all my questions and assisting me in selecting the right vehicle for my needs. The car was reliable, and the rental rates were reasonable. I had a great experience overall and would highly recommend their services.', '2023-07-05 20:18:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Sophia Johnson', 'sophia.johnson@gmail.com', 'sophia', '0241234567', '10/10/1990', 'P.O.Box 4500 Tema', 'Tema', 'Ghana', '2023-07-05 19:37:10', '2023-07-05 20:03:17'),
(6, 'Liam Wilson', 'liam.wilson@gmail.com', 'wilson', '0249876543', '24/12/1987', 'P. O. Box 78', 'Accra', 'Ghana', '2023-07-05 19:43:23', '2023-07-05 20:12:50'),
(7, 'Olivia Smith', 'olivia.smith@gmail.com', 'smith', '0242458135', '16/01/1997', 'E195/13', 'Accra', 'Ghana', '2023-07-05 19:44:19', '2023-07-05 20:17:36'),
(8, 'Noah Davis', 'noah.davis@gmail.com', 'davis', '0243692584', NULL, NULL, NULL, NULL, '2023-07-05 19:45:01', '2023-07-05 20:01:19'),
(9, 'Ava Taylor', 'ava.taylor@gmail.com', 'taylor', '0247891234', NULL, NULL, NULL, NULL, '2023-07-05 19:45:44', '2023-07-05 20:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(11, 'Urus', 23, 'Luxury, Confort and Sophisticated', 250, 'CNG', 2023, 5, 'car1.jpg', 'car2.jpeg', 'car3.jpg', 'car4.jpg', 'car5.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-05 19:10:23', NULL),
(12, 'Wrangler', 24, 'Versatile crossover', 200, 'Petrol', 2023, 5, 'jeep1.jpeg', 'jeep2.jpg', 'jeep3.jpeg', 'jeep4.jpg', 'jeep5.avif', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-05 19:20:02', NULL),
(13, 'Mustang', 9, 'Sporty Coupe', 250, 'Petrol', 1969, 2, 'ford1.jpg', 'ford2.jpg', 'ford4.jpg', 'ford5.jpg', 'ford6.jpg', 1, 1, NULL, 1, NULL, 1, 1, 1, 1, 1, NULL, 1, '2023-07-05 19:23:30', NULL),
(14, 'i7', 13, 'Hatchback gro city life', 180, 'Petrol', 2023, 5, 'bmw1.avif', 'bmw2.jpg', 'bmw3.jpg', 'bmw4.jpg', 'bmw5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-05 19:29:08', '2023-07-05 19:30:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
