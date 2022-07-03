create table customer (
    `id` int not null auto_increment,
    `name` varchar(255) not null,
    `domain` varchar(255),
    `servicedesk` varchar(255) not null,
    `deleted_at` date,
    `created_at` date,
    `updated_at` date,
    primary key (`id`)
);

