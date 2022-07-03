create table user (
    `id` int not null auto_increment,
    `email` varchar(255) not null,
    `password` varchar(255),
    `role` varchar(255) not null,
    `deleted_at` date,
    `created_at` date,
    `updated_at` date,
    primary key (`id`)
);

