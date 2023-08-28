const root = { user: 'root', pwd: 'root' };
const db01 = { user: 'user01', pwd: 'user01', collection: 'users', db: 'resume_users'}
const db02 = { user: 'user02', pwd: 'user02', collection: 'personals', db: 'resume_personals'}
const db03 = { user: 'user03', pwd: 'user03', collection: 'educations', db: 'resume_educations'}
const db04 = { user: 'user04', pwd: 'user04', collection: 'experiences', db: 'resume_experiences'}
const db05 = { user: 'user05', pwd: 'user05', collection: 'skills', db: 'resume_skills'}
const db06 = { user: 'user06', pwd: 'user06', collection: 'certifications', db: 'resume_certifications'}
const db07 = { user: 'user07', pwd: 'user07', collection: 'courses', db: 'resume_courses'}
const db08 = { user: 'user08', pwd: 'user08', collection: 'projects', db: 'resume_projects'}
const db09 = { user: 'user09', pwd: 'user09', collection: 'presentations', db: 'resume_presentations'}
const db10 = { user: 'user10', pwd: 'user10', collection: 'curriculums', db: 'resume_principal'}



print('AUTH MONGO ##############################################');
db.auth(root.user, root.pwd);

print('START USER ##############################################');
db = db.getSiblingDB(db01.db);
db.createUser({
  user: db01.user,
  pwd: db01.pwd,
  roles: [{ role: 'readWrite', db: db01.db }]
});
db.createCollection(db01.collection);
print('END USER ##############################################');

print('START PERSONAL ##############################################');
db = db.getSiblingDB(db02.db);
db.createUser({
  user: db02.user,
  pwd: db02.pwd,
  roles: [{ role: 'readWrite', db: db02.db }]
});
db.createCollection(db02.collection);
print('END PERSONAL ##############################################');

print('START EDUCATION ##############################################');
db = db.getSiblingDB(db03.db);
db.createUser({
  user: db03.user,
  pwd: db03.pwd,
  roles: [{ role: 'readWrite', db: db03.db }]
});
db.createCollection(db03.collection);
print('END EDUCATION ##############################################');

print('START EXPERIENCE ##############################################');
db = db.getSiblingDB(db04.db);
db.createUser({
  user: db04.user,
  pwd: db04.pwd,
  roles: [{ role: 'readWrite', db: db04.db }]
});
db.createCollection(db04.collection);
print('END WORK EXPERIENCE ##############################################');

print('START SKILL ##############################################');
db = db.getSiblingDB(db05.db);
db.createUser({
  user: db05.user,
  pwd: db05.pwd,
  roles: [{ role: 'readWrite', db: db05.db }]
});
db.createCollection(db05.collection);
print('END SKILL ##############################################');

print('START CERTIFICATION ##############################################');
db = db.getSiblingDB(db06.db);
db.createUser({
  user: db06.user,
  pwd: db06.pwd,
  roles: [{ role: 'readWrite', db: db06.db }]
});
db.createCollection(db06.collection);
print('END CERTIFICATION ##############################################');

print('START COURSE ##############################################');
db = db.getSiblingDB(db07.db);
db.createUser({
  user: db07.user,
  pwd: db07.pwd,
  roles: [{ role: 'readWrite', db: db07.db }]
});
db.createCollection(db07.collection);
print('END COURSE ##############################################');

print('START PROJECT ##############################################');
db = db.getSiblingDB(db08.db);
db.createUser({
  user: db08.user,
  pwd: db08.pwd,
  roles: [{ role: 'readWrite', db: db08.db }]
});
db.createCollection(db08.collection);
print('END PROJECT ##############################################');

print('START PRESENTATION ##############################################');
db = db.getSiblingDB(db09.db);
db.createUser({
  user: db09.user,
  pwd: db09.pwd,
  roles: [{ role: 'readWrite', db: db09.db }]
});
db.createCollection(db09.collection);
print('END PRESENTATION ##############################################');

print('START CURRICULUM ##############################################');
db = db.getSiblingDB(db10.db);
db.createUser({
  user: db10.user,
  pwd: db10.pwd,
  roles: [{ role: 'readWrite', db: db10.db }]
});
db.createCollection(db10.collection);
print('END CURRICULUM ##############################################');