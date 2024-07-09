--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Graphics Design'),
(2, 'Web Design'),
(3, 'Branding Design');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `image`, `url`) VALUES
(1, 'Logo 1', 'themeforest_1466845518', '#'),
(2, 'Logo 2', 'logo-2_1466845545', '#'),
(3, 'Logo 3', 'logo-3_1466845574', '#'),
(4, 'Logo 4', 'logo-4_1466845590', '#'),
(5, 'Logo 5', 'logo-5_1466845604', '#'),
(6, 'Logo 6', 'logo-6_1466846003', '#'),
(7, 'Logo 7', 'logo-7_1466846019', '#');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kuldip.viaviweb@gmail.com', '$2y$10$Qjn0occTdQ5KApfNmWhlp.JODsvbzzfRu3Y5bs..h/cjQ8fXZDz8O', '2022-08-29 01:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `cat_id`, `title`, `image`) VALUES
(1, 2, 'Digital Agency Template', 'digital-agency-template_1661849931'),
(2, 2, 'Chatbot Web Template', 'chatbot-web-template_1661849953'),
(3, 1, 'Digital Products Design', 'digital-products-design_1661849970'),
(4, 1, 'Digital Agency Template', 'digital-agency-template_1661849998'),
(5, 2, 'Fitness Program Template', 'fitness-program-template_1661850009'),
(6, 3, 'E-Wallet Template', 'e-wallet-template_1661850038');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `section_name_service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_service_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_service_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name_about` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_about_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_about_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_about_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name_portfolio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_portfolio_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name_achivement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_achivement_block1_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_achivement_block1_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_achivement_block2_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_achivement_block2_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_achivement_block3_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_achivement_block3_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_achivement_block4_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_achivement_block4_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name_team` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_team_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_team_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name_features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features1_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features1_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features1_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features2_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features2_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features2_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features3_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features3_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features3_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features4_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features4_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features4_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features5_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features5_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features5_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features6_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features6_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_features6_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name_testimonials` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_testimonials_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name_whychoose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_whychoose_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_our_client_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_name_contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_contact_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_contact_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_contact_email1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_contact_email2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_contact_phone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_contact_phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name_service`, `section_service_title`, `section_service_desc`, `section_name_about`, `section_about_title`, `section_about_desc`, `section_about_image`, `section_name_portfolio`, `section_portfolio_title`, `section_name_achivement`, `section_achivement_block1_number`, `section_achivement_block1_title`, `section_achivement_block2_number`, `section_achivement_block2_title`, `section_achivement_block3_number`, `section_achivement_block3_title`, `section_achivement_block4_number`, `section_achivement_block4_title`, `section_name_team`, `section_team_title`, `section_team_desc`, `section_name_features`, `section_features_title`, `section_features_desc`, `section_features1_icon`, `section_features1_title`, `section_features1_desc`, `section_features2_icon`, `section_features2_title`, `section_features2_desc`, `section_features3_icon`, `section_features3_title`, `section_features3_desc`, `section_features4_icon`, `section_features4_title`, `section_features4_desc`, `section_features5_icon`, `section_features5_title`, `section_features5_desc`, `section_features6_icon`, `section_features6_title`, `section_features6_desc`, `section_name_testimonials`, `section_testimonials_title`, `section_name_whychoose`, `section_whychoose_title`, `section_our_client_title`, `section_name_contact`, `section_contact_title`, `section_contact_address`, `section_contact_email1`, `section_contact_email2`, `section_contact_phone1`, `section_contact_phone2`) VALUES
(1, 'Services', 'Your Business Dreams', 'Lorem Ipsum has been the industry\'s standard dummy', 'About Us', 'We Transform Ideas', '<h4 class=\"title\">25 Years Of Experience We Provide Solutions Agency</h4>\r\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur! totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur. recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam.</p>\r\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur.</p>', 'about_image.png', 'Portfolio', 'Our Portfolio', '', '900', 'Happy Clients', '4000', 'Project Complete', '25', 'Years Of Experience', '140', 'Winning Awards', 'Team', 'Meet the Team', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Features', 'Awesome Features', 'Lorem ipsum dolor sit amet', 'mobile', '100% Responsive', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'lightbulb', 'Creative Ideas', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'gift', 'Easy Options', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'magic', 'Great Animations', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'cogs', 'Multi-Purpose', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'life-ring', 'Unlimited Support', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum reiciendis temporibus qui quibusdam.', 'Testimonials', 'What’s Clients Say', 'Why Choose', 'Why Choose Us?', 'Our Clients', 'Contact Us', 'Send Us Message', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'info@test.com', 'info@demotest.com', '+001 1250 1234', '+001 1203 15354');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_title`, `service_text`, `service_icon`) VALUES
(1, 'Modern Design', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum dolor sit ame consectetur adipisicing.', '1661848696.png'),
(2, 'Seo Marketing', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum dolor sit ame consectetur adipisicing.', '1661848763.png'),
(3, 'Easily Customize', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum dolor sit ame consectetur adipisicing.', '1661848807.png'),
(4, 'Social Media Marketing', 'Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem ipsum dolor sit ame consectetur adipisicing.', '1661848843.png'),
(5, 'Strategy Business', 'Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem ipsum dolor sit ame consectetur adipisicing.', '1661848868.png'),
(6, 'Market Analysis', 'Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem ipsum dolor sit ame consectetur adipisicing.', '1661848877.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_header_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_footer_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_section` int(11) DEFAULT NULL,
  `about_section` int(11) DEFAULT NULL,
  `portfolio_section` int(11) DEFAULT NULL,
  `achivement_section` int(11) DEFAULT NULL,
  `team_section` int(11) DEFAULT NULL,
  `features_section` int(11) DEFAULT NULL,
  `testimonials_section` int(11) DEFAULT NULL,
  `whychoose_section` int(11) DEFAULT NULL,
  `our_clients_section` int(11) DEFAULT NULL,
  `contact_us_section` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_style`, `site_name`, `site_email`, `site_logo`, `site_favicon`, `site_description`, `site_header_code`, `site_footer_code`, `site_copyright`, `facebook_url`, `linkedin_url`, `twitter_url`, `pinterest_url`, `google_plus_url`, `service_section`, `about_section`, `portfolio_section`, `achivement_section`, `team_section`, `features_section`, `testimonials_section`, `whychoose_section`, `our_clients_section`, `contact_us_section`) VALUES
(1, 'style_blue.css', 'Mobility CMS', 'kuldip.viaviweb@gmail.com', 'logo.png', 'favicon.png', 'Mobility CMS Script is one page template is fully responsive, creative, clean, and multipurpose with very elegant appearance and web design styles.', NULL, NULL, 'Copyright © 2022 Mobility CMS Script. All Rights Reserved.', '#', '#', '#', '#', '#', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `slider_sub_title`, `slider_image`) VALUES
(1, 'Creative Modern Agency', 'Lorem ipsum dolor sit amet consectetur adipiscing elit sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis suspendisse ultrices gravida commodo.', 'creative-modern-agency_1661838280'),
(2, 'Creative Solutions For Modern Agency', 'Lorem ipsum dolor sit amet consectetur adipiscing elit sed eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis suspendisse ultrices gravida commodo.', 'build-your-website_1661837514');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `designation`, `image`, `facebook_url`, `twitter_url`, `linkedin_url`) VALUES
(1, 'Geraldo M. Lundy', 'Co-Founder', 'geraldo-m-lundy_1661855101', '#', '#', '#'),
(2, 'John Doe', 'Analyst', 'john-doe_1661855132', '#', '#', '#'),
(3, 'Sevin P. Gonzalez', 'Developer', 'sevin-p-gonzalez_1661855491', '#', '#', '#'),
(4, 'Michael K. Walker', 'Designer', 'michael-k-walker_1661855509', '#', '#', '#'),
(5, 'Steven H. Brown', 'Graphic designer', 'steven-h-brown_1661855554', '#', '#', '#'),
(6, 'Dana J. Bingham', 'Senior Manager', 'dana-j-bingham_1661855601', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `testimonial`, `image`) VALUES
(1, 'John Deo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.', 'john-deo_1466838406'),
(2, 'William Harris', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.', 'john-roe_1466838495'),
(3, 'Martin Deo', 'Quis autem vel eum iure reprehenderit quin voluptate velit esse quam molestia consequat dolorem eum fugiat voluptas nulla pariaturor empsum dolor amet consectetur adipiscing elitsed eiusmod tempor incididunt laboret dolore magna aliquauis suspendisse', 'martin-deo_1661856229');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usertype` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `first_name`, `last_name`, `email`, `password`, `image_icon`, `mobile`, `address`, `city`, `postal_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'John', 'Deo', 'admin@admin.com', '$2y$10$cQFU.5sUZdl4cZeEdBkzwuipVRSyKI4BEvf7di783V6rp/3zuAZjS', 'admin-965bf2e0f3108983112bb705d2db4304', NULL, NULL, NULL, NULL, 'XbOsmK80tvhqIJyxvGqK9bLz9tuEfEgtXiFYMrwxDblAObR1ajs98Y1m2JSe', '2021-10-28 22:25:05', '2022-08-29 22:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `whychoose`
--

CREATE TABLE `whychoose` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whychoose`
--

INSERT INTO `whychoose` (`id`, `title`, `description`) VALUES
(1, 'Highly Experienced Professional Team', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.'),
(2, 'Up-to-Date with the Latest Standards', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed utLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut'),
(3, 'We Emphasize Simplicity', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.'),
(4, 'We’re Friendly & Affordable', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam. Sed commodo nibh ante facilisis bibendum dolor feugiat at duis sed dapibus leo nec ornare diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dapibus leo nec ornare diam.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `whychoose`
--
ALTER TABLE `whychoose`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whychoose`
--
ALTER TABLE `whychoose`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;