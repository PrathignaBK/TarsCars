

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `categories` (`id`, `category`, `status`, `date_created`) VALUES
(1, 'Audi', 1, '2022-09-17 15:01:49'),
(2, 'Ford', 1, '2022-09-17 15:01:49'),
(3, 'Fiat', 1, '2022-09-17 15:01:49'),
(4, 'Mahindra', 1, '2022-09-17 15:01:49'),
(5, 'BMW', 1, '2022-09-17 15:01:49'),
(6, 'Chevrolet', 1, '2022-09-17 15:01:49'),
(7, 'Datsun', 1, '2022-09-17 15:01:49'),
(8, 'Honda', 1, '2022-09-17 15:01:49'),
(9, 'Hyundai', 1, '2022-09-17 15:01:49'),
(10, 'Jaguar', 1, '2022-09-17 15:01:49'),
(11, 'Jeep', 1, '2022-09-17 15:01:49'),
(12, 'Kia', 1, '2022-09-17 15:01:49'),
(13, 'Land Rover', 1, '2022-09-17 15:01:49'),
(14, 'Maruti Suzuki', 1, '2022-09-17 15:01:49'),
(15, 'Mercedes Benz', 1, '2022-09-17 15:01:49'),
(16, 'Porche', 1, '2022-09-17 15:01:49'),
(17, 'Renault', 1, '2022-09-17 15:01:49'),
(18, 'Tata', 1, '2022-09-17 15:01:49'),
(19, 'Toyota', 1, '2022-09-17 15:01:49'),
(20, 'Volvo', 1, '2022-09-17 15:01:49');



CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(1, 'John Smith', '09123456789', 'jsmith@sample.com', 1, '2021-09-30 10:26:11'),
(2, 'George Wilson', '09112355799', 'gwilson@gmail.com', 1, '2021-09-30 10:30:58');



CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(1, 'contact', '09112355799'),
(1, 'email', 'jsmith@sample.com'),
(1, 'address', 'Sample Address'),
(1, 'vehicle_name', 'Mitsubishi Montero Sport'),
(1, 'vehicle_registration_number', 'GBN 0623'),
(1, 'vehicle_model', 'CDM-10140715'),
(1, 'service_id', '1,3,4'),
(1, 'pickup_address', 'Here St., There City, Sample Only 623');


CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `date_created`) VALUES
(1, 'Basic AC service', 'Employing a set of cutting-edge technologies, we perform a comprehensive evaluation of the air conditioning system to help maximize the cooling performance. There are a myriad of factors that can disrupt the proper functioning of a car AC and with our on point diagnostics we are able to examine and uncover every issue from faulty interior controls to more complex problems that affect the vent pressures, and overall cooling.
Our skilled technicians provide quality car AC service using specialized equipments for automotive AC units. A periodic AC service involves expert diagnostics and detailed inspections with complete reconditioning of the AC system. Issues related to leaking refrigerant, clogged/broken condenser, faulty compressor belt as well as electrical problems are identified and corrected with our leading edge tools and years of experience.
Your car’s air conditioning system is an intricate component requiring maintenance at regular intervals for its proper functioning. Like a traditional air conditioner, the car AC uses 3 components namely condenser, compressor, and evaporator. Timely maintenance and proper care of these components help to reduce the wear and obtain the best cooling performance from your cooling system.', 1, '2022-09-17 15:01:49'),
(2, 'Battery check and service', 'The base of battery maintenance is preventative measures and prudent check-ups. With VehicleCare, you can choose from a variety of battery maintenance services to avoid untimely discharges and premature failures. A regular car battery service involves detailed assessment for normal range of charge, followed by cleaning of battery terminals, checks for corrosion and blight, and scanning for any malfunctions that might be caused by weather changes or sulphation. We also provide doorstep battery replacement services. You can buy from the best brands in India and our expert mechanics are always at your service in the post installation period.Batteries in cars are a rechargeable electrical hub that store and supply current required for the operation of all battery-powered components. A car battery is essentially designed to serve two purposes - providing the initial zap of electricity and powering all electrical components in the car. The life of a car battery is typically anywhere from 3-5 years however, its capacity starts to decline after about three years, depending on factors like driving habits/condition, charge frequency, extreme temperatures, etc. A faltering battery can have a number of symptoms including slow crank, flickering lights, check engine light, etc. Check for the various tell tale signs to avoid', 1, '2022-09-17 15:01:49'),
(3, 'Car Wash and Spa', 'Maintaining a car’s perfect hygiene and glossy showroom finish requires more than just a regular car wash. Our car cleaning and detailing packages include a wide range of options to choose from. To keep your car germ-free and fresh looking with an express wash, drive through the nearest vehicle care workshop. While for a more detailed look you can go for the all round car cleaning service that includes rubbing/polishing, vacuuming, interior, exterior and upholstery cleaning with waxing and protective coating.Even as you’re not driving on a daily basis, your car is subject to the accumulation of dirt, dust, and other stubborn grimy substances. While the paintwork is prone to deterioration through blights and corrosion. Worn-out paint, due to its lost smoothness, tends to collect dirt and pollen on its surface and particles become much easier to seep into the cracks and gaps of the exterior. Conversely, a well-waxed car doesn’t let dirt stick as easily and its smooth glossy surface aids in wiping the dust off.', 1, '2022-09-17 15:01:49'),
(4, 'Custom Car Repair Services', 'Car repair is a tricky business and assessing it is even big of a challenge. Our detailed 40 point inspection helps you stay on top of every car problem and our custom car repair plan covers your every requirement from small fixes to the biggest of overhauls. With a team of expert mechanics, we understand the scale of car damage better than anyone and provide bespoke and affordable car repairs.Having car troubles? just can’t seem to put your finger on it? We’ll help you out. Get custom car repair services from VehicleCare. If you are facing anything related to clutch, engine suspension, electrical system, gearbox, brakes, or even something you don’t know of, just submit your problem and we’ll revert with a free estimate for your car within an hour.', 1, '2022-09-17 15:01:49'),
(5, 'Denting And Painting Service', 'Our expert mechanics follow a detailed procedure for assessing and repairing dents including accurately matching the paintwork. We analyze the type of damage and metal malleability with precision to employ the ideal method for dent repair. The dents, dings, or creases located are corrected with specialized equipment and paint corrections are performed only by seasoned technicians. Along with the best dent removal technique our mechanics are able to apply years of experience, helping you save both time and money.
A full body or panel restoration begins with a detailed inspection for metal positions, the intensity of damage, and the areas of paint chips, followed by preparation of the panel and dent removal using cutting-edge equipments. Then, the panel undergoes washing, baking, sanding, and drying to correct any irregularities and projections. Finally, the denting and painting process is completed with electrodip, clear coating, and waxing to bring out the true showroom finish.
Door dings, striped paintwork, body scratches, all car damages are unavoidable and equally annoying. It is highly uncertain, when and how the road will throw a curveball at your car, but don’t let the scratches compromise the look of your car. We realize how dear you hold your car and the importance of a dent-free, glossy paintwork which is why we offer a wide range of denting and painting services to cover your car from all sorts of damages from hail dents, weather damage, door dings to fender benders, and side collisions.', 1, '2022-09-17 15:01:49'),
(6, 'Periodic Car Service', 'The scheduled car service packages have been simplified to help you choose the service best suited to your needs- Basic service package, standard service package, and comprehensive service package. Our basic car service covers all the essentials required to keep you moving while the standard package accommodates a broader range of diagnostics to help you steer clear of unwanted repairs. The recommended miles between a basic and standard car service is 5000km and 10000km respectively. For cars with over 20000km on miles, we recommend our comprehensive car service package involving a detailed 40 point inspection of all components with all-round cleaning and reconditioning so you stay on top of every car problem.While cars in the modern age have become more reliable than ever, it is still extremely crucial to get periodic maintenance services to ensure their longevity and maintain their value in the long run. Certain key components of a car like engine oil, brakes, coolants, have a finite run and need to be serviced periodically to obtain optimum performance and maximum efficiency. A vehicle with FSH- Full-Service History of regular and timely car servicing holds a high value and always will have low chances of going wrong.', 1, '2022-09-17 15:01:49'),
(7, 'Wheel alignment and balancing', 'Wheel alignment services include tread check along with wheel orientation assessment, measuring the toe, camber, and caster. Wheel adjustments are recommended after testing both the static and dynamic aspects of your wheel and misaligned tyres are corrected adhering to the manufacturer’s recommended specifications. VehicleCare provides the best wheel alignment and balancing services, ensuring you get a long service span from your tyres and superior steer control.Daily wear and tear of commuting along with progressing tread asymmetries cause wheels to lose balance and alignment over time. This prevents you from obtaining optimum performance and also limits your safety. Improper wheel balancing and alignment can lead to uneven and faster tread wear, Along with poor fuel economy, and wobbly steering of the vehicle. Wheel balancing helps prevent premature tread wear through proper tyre weight distribution around the entire circumference of the vehicle while wheel alignment ensures a perfectly linear rotation for the efficient operation of your vehicle.', 1, '2022-09-17 15:01:49');



CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `owner_name` text NOT NULL,
  `category_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `service_requests` (`id`, `owner_name`, `category_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(1, 'Mike Williams', 3, 'Pick Up', 1, 2, '2021-09-30 14:48:57');



CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Vehicle Service Management System'),
(6, 'short_name', 'TarCars'),
(11, 'logo', 'uploads/1632965940_vrs-logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1663408920_carservice.jpg');



CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(6, 'Claire', 'Blake', 'cblake', 'cd74fae0a3adf459f73bbf187607ccea', 'uploads/1632990840_ava.jpg', NULL, 2, '2021-09-30 16:34:02', '2021-09-30 16:35:26');


ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);


ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

