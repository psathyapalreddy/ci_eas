
create Database eas_db;

CREATE TABLE eas_db.attendance (
  id int(11) NOT NULL,
  username char(6) NOT NULL,
  employee_id int(3) UNSIGNED ZEROFILL NOT NULL,
  department_id char(3) NOT NULL,
  shift_id int(1) NOT NULL,
  location_id int(1) NOT NULL,
  in_time int(11) NOT NULL,
  notes varchar(120) NOT NULL,
  image varchar(50) NOT NULL,
  lack_of varchar(11) NOT NULL,
  in_status varchar(15) NOT NULL,
  out_time int(11) NOT NULL,
  out_status varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO eas_db.attendance (id, username, employee_id, department_id, shift_id, location_id, in_time, notes, image, lack_of, in_status, out_time, out_status) VALUES
(45, 'ADM011', 011, 'ADM', 1, 1, 1589178316, 'sdf', 'item-200511-8f5d7be1a1.jpg', 'None', 'Late', 1589178477, 'Early'),
(48, 'ADM011', 011, 'ADM', 1, 1, 1589381121, '', 'item-200513-ad6953a07e.jpg', 'Notes', 'Late', 1589381127, 'Over Time'),
(49, 'PCD010', 010, 'PCD', 2, 1, 1589384432, 'asdasd', '', 'None,image', 'Late', 1589384514, 'Over Time'),
(50, 'ADM011', 011, 'ADM', 1, 1, 1589391038, '', '', 'Notes,image', 'On Time', 1589391056, 'Early'),
(51, 'PCD010', 010, 'PCD', 3, 1, 1622553388, 'testing', 'item-210601-3946bb00df.png', 'None', 'Late', 1622553470, 'Over Time'),
(52, 'PCD010', 010, 'PCD', 3, 2, 1631893356, 'none', '', 'None,image', 'Late', 1631893413, 'Over Time'),
(53, 'STD026', 026, 'STD', 1, 1, 1631894335, 'none', '', 'None,image', 'Late', 1631894403, 'Over Time'),
(54, 'ADM011', 011, 'ADM', 1, 2, 1631894692, 'demo', '', 'None,image', 'Late', 1631894696, 'Over Time'),
(55, 'QCD027', 027, 'QCD', 6, 2, 1631499386, 'none..', '', 'None,image', 'Late', 1631529057, 'Early'),
(56, 'QCD027', 027, 'QCD', 6, 2, 1631583036, 'none', '', 'None,image', 'Late', 1631611849, 'Early'),
(58, 'QCD027', 027, 'QCD', 6, 1, 1631733350, 'none', '', 'None,image', 'Late', 1631797356, 'Early'),
(59, 'QCD027', 027, 'QCD', 6, 4, 1631863331, 'none', '', 'None,image', 'Late', 1631896539, 'Early'),
(60, 'QCD027', 027, 'QCD', 6, 1, 1631214919, 'none', '', 'None,image', 'Late', 1631250936, 'Over Time'),
(61, 'STD026', 026, 'STD', 1, 2, 1631493955, 'none', '', 'None,image', 'On Time', 1631523613, 'Over Time'),
(62, 'ADM011', 011, 'ADM', 1, 1, 1631584873, 'none', '', 'None,image', 'Late', 1631621603, 'Over Time'),
(63, 'QCD027', 027, 'QCD', 6, 2, 1632109417, 'this is a demo note!', '', 'None,image', 'Late', 1632109437, 'Early'),
(64, 'ACD002', 002, 'ACD', 2, 3, 1632109840, 'demo demo', '', 'None,image', 'On Time', 1632109845, 'Early'),
(65, 'STD026', 026, 'STD', 1, 2, 1632109903, 'test', '', 'None,image', 'Late', 1632109905, 'Early'),
(66, 'ITD028', 028, 'ITD', 7, 7, 1654738570, 'Sample Time-In', 'item-220609-6dc7d7e8fe.png', 'None', 'On Time', 1654738629, 'Early'),
(71, 'HRD030', 030, 'HRD', 7, 7, 1654756719, 'Sample Note only', 'item-220609-496d1ceffe.png', 'None', 'Late', 0, '');



CREATE TABLE eas_db.department (
  id char(3) NOT NULL,
  name varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO eas_db.department (id, name) VALUES
('ACD', 'Accounting Department'),
('ADM', 'Admin Department'),
('HRD', 'Human Resource Department'),
('ITD', 'Information Technology Department - Updated'),
('PCD', 'Production Controller Department'),
('PLD', 'Planner Department'),
('QCD', 'Quality Control Department'),
('SCD', 'Security Department'),
('STD', 'Store Department');


CREATE TABLE eas_db.employee (
  id int(3) UNSIGNED ZEROFILL NOT NULL,
  name varchar(50) NOT NULL,
  email varchar(128) NOT NULL,
  gender char(1) NOT NULL,
  image varchar(128) NOT NULL,
  birth_date date NOT NULL,
  hire_date date NOT NULL,
  shift_id int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO eas_db.employee (id, name, email, gender, image, birth_date, hire_date, shift_id) VALUES
(001, 'Sathyapal', 'sathya@mail.com', 'M', 'default.png', '1996-07-15', '2020-03-05', 7),
(025, 'Admin ', 'admin@admin.com', 'M', 'default.png', '1996-05-25', '2021-06-04', 0),
(028, 'Srikar', 'srikar@mail.com', 'M', 'item-220609-64856edd56.png', '1997-06-23', '2021-04-20', 7),
(030, 'Saicharan', 'charan@mail.com', 'M', 'item-220609-97e2f7f0fe.png', '1997-10-14', '2020-03-05', 7);



CREATE TABLE eas_db.employee_department (
  id int(3) NOT NULL,
  employee_id int(3) UNSIGNED ZEROFILL NOT NULL,
  department_id char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO eas_db.employee_department (id, employee_id, department_id) VALUES
(1, 001, 'HRD'),
(2, 002, 'ACD'),
(3, 003, 'QCD'),
(4, 004, 'SCD'),
(5, 005, 'STD'),
(6, 006, 'ACD'),
(7, 007, 'PLD'),
(8, 008, 'STD'),
(9, 009, 'STD'),
(10, 010, 'PCD'),
(21, 011, 'ADM'),
(25, 024, 'HRD'),
(26, 026, 'STD'),
(27, 027, 'QCD'),
(28, 028, 'ITD'),
(30, 030, 'HRD');


CREATE TABLE eas_db.location (
  id int(1) NOT NULL,
  name varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eas_db.location (id, name) VALUES
(1, 'Home'),
(2, 'Office'),
(3, 'Store'),
(4, 'Site'),
(6, 'Field'),
(7, 'Client Office');


CREATE TABLE eas_db.shift (
  id int(1) NOT NULL,
  start time NOT NULL,
  end time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO eas_db.shift (id, start, end) VALUES
(1, '08:00:00', '16:00:00'),
(2, '13:00:00', '21:00:00'),
(3, '18:00:00', '02:00:00'),
(4, '03:15:02', '02:05:05'),
(5, '07:00:00', '18:25:00'),
(6, '01:00:00', '12:00:00'),
(7, '09:30:00', '18:30:00'),
(8, '23:23:23', '23:23:23');


CREATE TABLE eas_db.users (
  username char(6) NOT NULL,
  password varchar(128) NOT NULL,
  employee_id int(3) UNSIGNED ZEROFILL NOT NULL,
  role_id int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eas_db.users (username, password, employee_id, role_id) VALUES
('ACD002', '$2y$10$5nv5ehyMVdljfKJ6izsOqOimsbv.cbzU.XLB9ji9zbA.eICdSrNvO', 002, 2),
('ADM011', '$2y$10$BKpQcs4XKavCcYdFWujzx.Xqb7r9eNkDrOYss2VNXrMJUUpm1agUC', 011, 2),
('admin', '$2y$10$tG8hnh7w.yiJL7fjlRCmkuHBwi0QI6DHFXmc1s6X3cAFuw5pRfO/O', 025, 1),
('HRD001', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 001, 2),
('HRD030', '$2y$10$nGeEuKaPiQ45O6Yvt3BxGuxY.BN.IfMsxP4nWMkM.yXxQkTRyRfDa', 030, 2),
('ITD028', '$2y$10$vQQ80W50S/rsXThp2YkQ5uH3XKej4bZE68L7Cfz9.MVcQ0EiJo.Hy', 028, 2),
('PCD010', '$2y$10$BKpQcs4XKavCcYdFWujzx.Xqb7r9eNkDrOYss2VNXrMJUUpm1agUC', 010, 2),
('QCD027', '$2y$10$peALJo.JKZyD6uMBd41UfuHGQSJe7ExOfDhPITvDbSRRXeWUGY9xy', 027, 2),
('STD005', '$2y$10$hr35h1fIySFYCSRVL2jRD.RuYa9WtJCEJkkqvQfPboYK7VwURpLim', 005, 2),
('STD008', '$2y$10$8PGnFaiZPYtcIGrwzMmVZuNKbUb/A88f0NZOA9QVgHaUIJ6ddg.Si', 008, 2),
('STD026', '$2y$10$8WNMvEEgNPWyRuSeeLDE1uXwnBkYNJE/heLT1zWbsUfYb/wKFyYIy', 026, 2);


CREATE TABLE eas_db.user_access (
  id int(2) NOT NULL,
  role_id int(1) NOT NULL,
  menu_id int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO eas_db.user_access (id, role_id, menu_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 1, 5);



CREATE TABLE eas_db.user_menu (
  id int(2) NOT NULL,
  menu varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO eas_db.user_menu (id, menu) VALUES
(1, 'Admin'),
(2, 'Master'),
(3, 'Attendance'),
(4, 'Profile'),
(5, 'Report');



CREATE TABLE eas_db.user_role (
  id int(1) NOT NULL,
  name varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO eas_db.user_role (id, name) VALUES
(1, 'Admin'),
(2, 'Employee');



CREATE TABLE eas_db.user_submenu (
  id int(2) NOT NULL,
  menu_id int(2) NOT NULL,
  title varchar(20) NOT NULL,
  url varchar(50) NOT NULL,
  icon varchar(50) NOT NULL,
  is_active int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO eas_db.user_submenu (id, menu_id, title, url, icon, is_active) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'Department', 'master', 'fas fa-fw fa-building', 1),
(3, 2, 'Shift', 'master/shift', 'fas fa-fw fa-exchange-alt', 1),
(4, 2, 'Employee', 'master/employee', 'fas fa-fw fa-id-badge', 1),
(5, 2, 'Location', 'master/location', 'fas fa-fw fa-map-marker-alt', 1),
(6, 3, 'Attendance Form', 'attendance', 'fas fa-fw fa-clipboard-list', 1),
(7, 3, 'Statistics', 'attendance/stats', 'fas fa-fw fa-chart-pie', 0),
(8, 4, 'My Profile', 'profile', 'fas fa-fw fa-id-card', 1),
(9, 2, 'Users', 'master/users', 'fas fa-fw fa-users', 1),
(11, 5, 'Print Report', 'report', 'fas fa-fw fa-paste', 1),
(12, 3, 'History', 'attendance/history', 'fas fa-fw fa-th-list', 1);

ALTER TABLE eas_db.attendance
  ADD PRIMARY KEY (id),
  ADD KEY username (username),
  ADD KEY employee_id (employee_id),
  ADD KEY department_id (department_id),
  ADD KEY shift_id (shift_id),
  ADD KEY location_id (location_id);


ALTER TABLE eas_db.department
  ADD PRIMARY KEY (id);


ALTER TABLE eas_db.employee
  ADD PRIMARY KEY (id),
  ADD KEY shift_id_fk_e (shift_id);

ALTER TABLE eas_db.employee_department
  ADD PRIMARY KEY (id),
  ADD KEY employee_department_ibfk_1 (employee_id),
  ADD KEY employee_department_ibfk_2 (department_id);

ALTER TABLE eas_db.location
  ADD PRIMARY KEY (id);

ALTER TABLE eas_db.shift
  ADD PRIMARY KEY (id);


ALTER TABLE eas_db.users
  ADD PRIMARY KEY (username),
  ADD KEY employee_id (employee_id),
  ADD KEY role_id (role_id);

ALTER TABLE eas_db.user_access
  ADD PRIMARY KEY (id),
  ADD KEY menu_id (menu_id),
  ADD KEY role_id (role_id);

ALTER TABLE eas_db.user_menu
  ADD PRIMARY KEY (id);


ALTER TABLE eas_db.user_role
  ADD PRIMARY KEY (id);


ALTER TABLE eas_db.user_submenu
  ADD PRIMARY KEY (id),
  ADD KEY menu_id (menu_id);

ALTER TABLE eas_db.attendance
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

ALTER TABLE eas_db.employee
  MODIFY id int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE eas_db.employee_department
  MODIFY id int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE eas_db.location
  MODIFY id int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE eas_db.shift
  MODIFY id int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE eas_db.user_access
  MODIFY id int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE eas_db.user_menu
  MODIFY id int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE eas_db.user_role
  MODIFY id int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE eas_db.user_submenu
  MODIFY id int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE eas_db.attendance
  ADD CONSTRAINT attendance_ibfk_1 FOREIGN KEY (username) REFERENCES users (username) ON UPDATE CASCADE,
  ADD CONSTRAINT attendance_ibfk_2 FOREIGN KEY (employee_id) REFERENCES employee (id) ON UPDATE CASCADE,
  ADD CONSTRAINT attendance_ibfk_3 FOREIGN KEY (department_id) REFERENCES department (id) ON UPDATE CASCADE,
  ADD CONSTRAINT attendance_ibfk_4 FOREIGN KEY (shift_id) REFERENCES shift (id) ON UPDATE CASCADE,
  ADD CONSTRAINT attendance_ibfk_5 FOREIGN KEY (location_id) REFERENCES location (id) ON UPDATE CASCADE;

ALTER TABLE eas_db.employee
  ADD CONSTRAINT shift_id_fk_e FOREIGN KEY (shift_id) REFERENCES shift (id) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE eas_db.employee_department
  ADD CONSTRAINT employee_department_ibfk_1 FOREIGN KEY (employee_id) REFERENCES employee (id) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT employee_department_ibfk_2 FOREIGN KEY (department_id) REFERENCES department (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE eas_db.users
  ADD CONSTRAINT users_ibfk_1 FOREIGN KEY (employee_id) REFERENCES employee (id) ON UPDATE CASCADE,
  ADD CONSTRAINT users_ibfk_2 FOREIGN KEY (role_id) REFERENCES user_role (id) ON UPDATE CASCADE;

ALTER TABLE eas_db.user_access
  ADD CONSTRAINT user_access_ibfk_1 FOREIGN KEY (menu_id) REFERENCES user_menu (id) ON UPDATE CASCADE,
  ADD CONSTRAINT user_access_ibfk_2 FOREIGN KEY (role_id) REFERENCES user_role (id) ON UPDATE CASCADE;

ALTER TABLE eas_db.user_submenu
  ADD CONSTRAINT user_submenu_ibfk_1 FOREIGN KEY (menu_id) REFERENCES user_menu (id) ON UPDATE CASCADE;
COMMIT;
