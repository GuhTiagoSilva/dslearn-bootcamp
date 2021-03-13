INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown','alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown','bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green','maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw2A_cqjjhdluD1XQ_gExw4l&ust=1615748599338000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDU09z6re8CFQAAAAAdAAAAABAD', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ASwitch-course-book-grey.svg&psig=AOvVaw2ftoyE-UB27YUgezTBAVx4&ust=1615748619441000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNCnjOn6re8CFQAAAAAdAAAAABAD');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0','2021-03-13T03:00:00','2021-06-13T03:00:00',1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0','2021-12-13T03:00:00','2021-12-13T03:00:00',1);


INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Trilha HTML','Trilha Principal do Curso',1,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw2A_cqjjhdluD1XQ_gExw4l&ust=1615748599338000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDU09z6re8CFQAAAAAdAAAAABAD',1,1);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Fórum','Tire suas dúvidas',2,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw2A_cqjjhdluD1XQ_gExw4l&ust=1615748599338000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDU09z6re8CFQAAAAAdAAAAABAD',2,2);
INSERT INTO tb_resource (title, description, position, img_uri, type, offer_id) VALUES ('Lives','Lives exclusivas para a turma',3,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw2A_cqjjhdluD1XQ_gExw4l&ust=1615748599338000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDU09z6re8CFQAAAAAdAAAAABAD',0,1);