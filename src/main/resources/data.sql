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


INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 1','Nest capítulo, vamos começar',1,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw2A_cqjjhdluD1XQ_gExw4l&ust=1615748599338000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDU09z6re8CFQAAAAAdAAAAABAD',1,null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 2','Nest capítulo, vamos continuar',2,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw2A_cqjjhdluD1XQ_gExw4l&ust=1615748599338000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDU09z6re8CFQAAAAAdAAAAABAD',1,1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Capítulo 3','Nest capítulo, vamos finalizar',3,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ftraining-course-training-3250007%2F&psig=AOvVaw2A_cqjjhdluD1XQ_gExw4l&ust=1615748599338000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDU09z6re8CFQAAAAAdAAAAABAD',1,2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_update) VALUES (1, 1, '2021-03-13T13:00:00', null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_update) VALUES (2, 1, '2021-03-13T13:00:00', null, true, false);


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1',1,1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES(1,'Material de Apoio do capítulo', 'https://www.youtube.com/watch?v=KsGYZqQNK9k');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do Capítulo 1',2,1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES(2,'Material de Apoio do capítulo', 'https://www.youtube.com/watch?v=KsGYZqQNK9k');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do Capítulo 1',3,1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES(3,'Material de Apoio do capítulo', 'https://www.youtube.com/watch?v=KsGYZqQNK9k');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Capítulo 1',4,1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES(4,'Tarefa do capítulo 1', 5, 4, 1.0, '2021-03-25T03:00:00');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', false, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);