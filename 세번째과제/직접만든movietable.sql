drop table StarsIn cascade constraints;
drop table MovieStar cascade constraints;
drop table Movie cascade constraints;
drop table Studio cascade constraints;
drop table MovieExec cascade constraints;
drop table CarToon cascade constraints;

  CREATE TABLE "MOVIEEXEC" 
   (	"NAME" VARCHAR2(30) constraint me_name UNIQUE, 
	"ADDRESS" VARCHAR2(255), 
	"CERTNO" NUMBER(*,0) constraint me_key Primary Key, 
	"NETWORTH" NUMBER(*,0),
   "SPOUSENAME" VARCHAR2(30),
   "GENDER" CHAR(6), 
	"BIRTHDATE" DATE constraint me_bir UNIQUE,  
   CONSTRAINT "me_SEX_CHK" CHECK (gender in ('male', 'female'))
   )  
/
REM INSERTING into MOVIEEXEC
SET DEFINE OFF;
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('이지민','대연동',10,21321,'마동석','female',to_date('2000-09-15','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('마석대','고현동',16,75212,'전지현','male',to_date('1971-03-01','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('공효진','아주동',22,54323,'곽아론','male',to_date('1989-02-24','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('김미소','수월동',15,16542,'송지효','male',to_date('1985-02-11','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('김바보','대연동',30,18763,'권필쌍','female',to_date('1981-08-20','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('김지영','수영동',25,36542,'송강호','male',to_date('1973-01-19','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('장혜정','수영동',12,27652,'박격포','female',to_date('1982-04-27','RRRR-MM-DD'));

Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('김무열','고현동',21,10472,null,'male  ',to_date('1982-05-22','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('윤계상','고현동',18,27613,'윈터','male  ',to_date('1974-03-22','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('김규억','상동동',32,29452,'박소담','male  ',to_date('1977-02-17','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('김근철','수월동',14,18452,'김혜수','male  ',to_date('1971-08-21','RRRR-MM-DD'));
Insert into MOVIEEXEC (NAME,ADDRESS,CERTNO,NETWORTH,SPOUSENAME,GENDER,BIRTHDATE) values ('여춘팔','수영동',19,17412,'이성경','male  ',to_date('1971-09-12','RRRR-MM-DD'));



--------------------------------------------------------
--  DDL for Table MOVIESTAR
--------------------------------------------------------

  CREATE TABLE "MOVIESTAR" 
   (	"NAME" VARCHAR2(30) constraint st_key primary key, 
	"ADDRESS" VARCHAR2(255), 
	"GENDER" CHAR(6), 
	"BIRTHDATE" DATE,
   "SPOUSENAME" VARCHAR2(30),
    CONSTRAINT "st_SEX_CHK" CHECK (gender in ('male', 'female'))
   )
/
REM INSERTING into MOVIESTAR
SET DEFINE OFF;
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('마동석','대연동','male  ',to_date('1971-03-01','RRRR-MM-DD'),'이지민');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('김무열','고현동','male  ',to_date('1982-05-22','RRRR-MM-DD'),null);
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('윤계상','장평동','male  ',to_date('1974-03-22','RRRR-MM-DD'),'윈터');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('김윤석','수월동','male  ',to_date('1971-03-01','RRRR-MM-DD'),'닝닝');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('이정재','아주동','male  ',to_date('1971-03-01','RRRR-MM-DD'),'지젤');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('류준열','고현동','male  ',to_date('1982-02-12','RRRR-MM-DD'),'김채원');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('조정석','상동동','male  ',to_date('1976-07-21','RRRR-MM-DD'),'사쿠라');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('박서준','장평동','male  ',to_date('1977-05-22','RRRR-MM-DD'),'히토미');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('강하늘','아주동','male  ',to_date('1979-03-15','RRRR-MM-DD'),'최예나');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('성동일','장평동','male  ',to_date('1982-03-18','RRRR-MM-DD'),'조유리');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('송강호','상동동','male  ',to_date('1989-07-30','RRRR-MM-DD'),'김지영');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('이선균','상동동','male  ',to_date('1978-09-15','RRRR-MM-DD'),'아이린');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('황정민','고현동','male  ',to_date('1984-08-02','RRRR-MM-DD'),'박수영');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('강동원','수월동','male  ',to_date('1988-07-27','RRRR-MM-DD'),'이미주');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('송지효','고현동','female',to_date('1981-03-21','RRRR-MM-DD'),'김미소');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('전지현','고현동','female',to_date('1971-03-01','RRRR-MM-DD'),'마석대');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('김혜수','상동동','female',to_date('1978-05-24','RRRR-MM-DD'),'김근철');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('공효진','아주동','male',to_date('1989-02-24','RRRR-MM-DD'),'곽아론');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('라미란','아주동','female',to_date('1971-03-01','RRRR-MM-DD'),'강동호');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('이성경','수월동','female',to_date('1985-02-11','RRRR-MM-DD'),'여춘팔');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('수영','장평동','female',to_date('1982-09-15','RRRR-MM-DD'),'최민기');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('박소담','수월동','female',to_date('1989-06-12','RRRR-MM-DD'),'김규억');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('루카스','고현동','male  ',to_date('1972-11-22','RRRR-MM-DD'),'김영조');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('김동현','고현동','male  ',to_date('1983-10-19','RRRR-MM-DD'),'김은지');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('황민현','아주동','male  ',to_date('1972-12-02','RRRR-MM-DD'),'허수빈');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('정재현','고현동','male  ',to_date('1979-09-15','RRRR-MM-DD'),'류지영');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('김지은','장평동','female',to_date('1980-03-09','RRRR-MM-DD'),'최성현');
Insert into MOVIESTAR (NAME,ADDRESS,GENDER,BIRTHDATE,SPOUSENAME) values ('황지현','상동동','female',to_date('1984-02-28','RRRR-MM-DD'),'최준호');


--------------------------------------------------------
--  DDL for Table STUDIO
--------------------------------------------------------

  CREATE TABLE "STUDIO" 
   (	"NAME" VARCHAR2(30) constraint std_key primary key, 
	"ADDRESS" VARCHAR2(255), 
	"PRESNO" NUMBER(*,0),
    "EMPNO" NUMBER(*,0)
   )
/
REM INSERTING into STUDIO
SET DEFINE OFF;
Insert into STUDIO (NAME,ADDRESS,PRESNO,EMPNO) values ('kiwi','대연동',15,100);
Insert into STUDIO (NAME,ADDRESS,PRESNO,EMPNO) values ('fox','고현동',22,316);
Insert into STUDIO (NAME,ADDRESS,PRESNO,EMPNO) values ('showbox','거제시',25,345);
Insert into STUDIO (NAME,ADDRESS,PRESNO,EMPNO) values ('lotte','부산시',30,214);
Insert into STUDIO (NAME,ADDRESS,PRESNO,EMPNO) values ('cj','울산시',12,743);
Insert into STUDIO (NAME,ADDRESS,PRESNO,EMPNO) values ('ace','포항시',10,61); 
Insert into STUDIO (NAME,ADDRESS,PRESNO,EMPNO) values ('mega','용인시',14,21);
Insert into STUDIO (NAME,ADDRESS,PRESNO,EMPNO) values ('enm','인제시',16,123);
--------------------------------------------------------
--  Ref Constraints for Table STUDIO
--------------------------------------------------------

  ALTER TABLE "STUDIO" ADD  constraint studio_fk FOREIGN KEY ("PRESNO")
	  REFERENCES "MOVIEEXEC" ("CERTNO") ON DELETE CASCADE ENABLE;
/


--------------------------------------------------------
--  DDL for Table MOVIE
--------------------------------------------------------

 CREATE TABLE "MOVIE" 
   (	"TITLE" VARCHAR2(255), 
	"YEAR" NUMBER(*,0), 
	"LENGTH" NUMBER(*,0), 
	"INCOLOR" CHAR(1), 
	"STUDIONAME" VARCHAR2(30), 
	"PRODUCERNO" NUMBER(*,0),
   "DIRECTORNO" NUMBER(*,0),
   "SOUNDSTUDIO" VARCHAR2(255),

    constraint mv_key primary key(title,year),
    constraint mv_chk CHECK (length > 50 and year > 1900 and year <= 2022)
   )
/
REM INSERTING into MOVIE
SET DEFINE OFF;
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('악인전',2019,109,'t','kiwi',19,16,'ace');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('유체이탈자',2021,108,'t','fox',22,14,'mega');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('성난황소',2018,115,'t','kiwi',15,16,'mega');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('도둑들',2012,135,'t','showbox',25,14,'ace');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('뺑반',2019,133,'t','showbox',30,14,'showbox');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('청년경찰',2017,109,'t','kiwi',15,16,'showbox');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('걸캅스',2019,107,'t','cj',12,16,'enm');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('기생충',2019,131,'t','cj',30,10,'enm');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('검사외전',2016,126,'t','showbox',15,10,'enm');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('star wars',2000,130,'t','fox',22,10,'enm');
Insert into MOVIE (TITLE,YEAR,LENGTH,INCOLOR,STUDIONAME,PRODUCERNO,DIRECTORNO,SOUNDSTUDIO) values ('little mermaid',2012,112,'t','showbox',19,14,'enm');
   
 

--------------------------------------------------------

  ALTER TABLE "MOVIE" ADD constraint mv_prod FOREIGN KEY ("PRODUCERNO")
	  REFERENCES "MOVIEEXEC" ("CERTNO") ON DELETE CASCADE ENABLE;
 /
  ALTER TABLE "MOVIE" ADD constraint mv_studio FOREIGN KEY ("STUDIONAME")
	  REFERENCES "STUDIO" ("NAME") ON DELETE CASCADE ENABLE;
/
  ALTER TABLE "MOVIE" ADD constraint mv_dir FOREIGN KEY("DIRECTORNO")
     REFERENCES "MOVIEEXEC" ("CERTNO") ON DELETE CASCADE ENABLE;
/
   ALTER TABLE "MOVIE" ADD constraint mv_sound FOREIGN KEY ("SOUNDSTUDIO")
     REFERENCES "STUDIO" ("NAME") ON DELETE CASCADE ENABLE;
/

--------------------------------------------------------
--  DDL for Table STARSIN
--------------------------------------------------------

  CREATE TABLE "STARSIN" 
   (	"MOVIETITLE" VARCHAR2(255), 
	"MOVIEYEAR" NUMBER(*,0), 
	"STARNAME" VARCHAR2(30),
   "GURANTEE" NUMBER(*,0),
    constraint stin_key primary key(movietitle,movieyear, starname),
    constraint stin_gur CHECK (GURANTEE>10000)
   )
/
REM INSERTING into STARSIN
SET DEFINE OFF;
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('악인전',2019,'마동석',3482917);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('악인전',2019,'김무열',34782);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('유체이탈자',2021,'윤계상',12332);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('성난황소',2018,'마동석',34562);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('성난황소',2018,'송지효',34562);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('도둑들',2012,'김윤석',45827);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('도둑들',2012,'이정재',45827);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('도둑들',2012,'전지현',45827);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('도둑들',2012,'김혜수',45827);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('뺑반',2019,'공효진',71232);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('뺑반',2019,'마동석',71232);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('뺑반',2019,'조정석',71232);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('청년경찰',2017,'박서준',18437);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('청년경찰',2017,'강하늘',18437);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('청년경찰',2017,'마동석',18437);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('걸캅스',2019,'라미란',23419);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('걸캅스',2019,'이성경',23419);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('걸캅스',2019,'수영',23419);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('기생충',2019,'송강호',14562);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('기생충',2019,'이선균',14562);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('기생충',2019,'박소담',14562);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('검사외전',2016,'황정민',58326);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('검사외전',2016,'강동원',58326);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('star wars',2000,'루카스',34728);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('little mermaid',2012,'김동현',16365);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('little mermaid',2012,'황민현',16365);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('little mermaid',2012,'정재현',16365);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('little mermaid',2012,'김지은',16365);
Insert into STARSIN (MOVIETITLE,MOVIEYEAR,STARNAME,GURANTEE) values ('little mermaid',2012,'황지현',16365);

--------------------------------------------------------

  ALTER TABLE "STARSIN" ADD constraint stin_fk1 FOREIGN KEY ("MOVIETITLE", "MOVIEYEAR")
	  REFERENCES "MOVIE" ("TITLE", "YEAR") ON DELETE CASCADE ENABLE
 /
  ALTER TABLE "STARSIN" ADD constraint stin_fk2 FOREIGN KEY ("STARNAME")
	  REFERENCES "MOVIESTAR" ("NAME") ON DELETE CASCADE ENABLE
/

 CREATE TABLE "CARTOON" 
   (	"TITLE" VARCHAR2(255), 
	"YEAR" NUMBER(*,0), 
	"VOICE" VARCHAR2(30),
    constraint cart_key primary key(TITLE,YEAR,VOICE)
   )
   /
REM INSERTING into MOVIE
SET DEFINE OFF;
Insert into CARTOON (TITLE,YEAR,VOICE) values ('little mermaid',2012,'김동현');
Insert into CARTOON (TITLE,YEAR,VOICE) values ('little mermaid',2012,'황민현');
Insert into CARTOON (TITLE,YEAR,VOICE) values ('little mermaid',2012,'정재현');
Insert into CARTOON (TITLE,YEAR,VOICE) values ('little mermaid',2012,'김지은');
Insert into CARTOON (TITLE,YEAR,VOICE) values ('little mermaid',2012,'황지현');

----------------------------------------------------------------------------


ALTER TABLE "CARTOON" ADD constraint cart_c1 FOREIGN KEY ("TITLE", "YEAR")
	  REFERENCES "MOVIE" ("TITLE", "YEAR") ON DELETE CASCADE ENABLE
      /
ALTER TABLE "CARTOON" ADD constraint voice_fk FOREIGN KEY("VOICE")
     REFERENCES "MOVIESTAR" ("NAME") ON DELETE CASCADE ENABLE
     /
commit;
quit;
