 DROP TABLE public.vehicleclass;

CREATE TABLE public.VehicleClass (
	"id" Serial NOT NULL,
	"Name" varchar(100) NOT null
	,
	CONSTRAINT "PK_VehicleClass" PRIMARY KEY ("id")	);
	
DROP TABLE public."Vehicle";

CREATE TABLE public."Vehicle" (
	"id" Serial NOT NULL,
	"Name" varchar(100) NOT NULL,
	"PassengerCapacity" int4 NOT NULL,
	"VehicleClass" int4 NOT NULL,
	"Active" bool not NULL,
	"Phone" varchar(100) NULL,
	CONSTRAINT "PK_Vehicle" PRIMARY KEY ("id")
	);

INSERT INTO "Vehicle" ("id","Name","PassengerCapacity","VehicleClass","Active","Phone") VALUES
 (1, '������ ����� � 777 �� 72'           ,4,1, true ,'8-919-950-96-45')
,(2, '������ ����� � 141 �� 72'           ,4,1, false,'8-904-887-21-71')
,(3, '���� �001��'                        ,4,1, true ,NULL)
,(4, '����������� � 648 �� 72'            ,6,1, true ,'8-919-920-31-09')
,(5, '������ ����� � 288 �� 72'           ,4,1, false,'8-908-877-77-87')
,(6, '������ ����� � 924 �� 196'          ,4,1, true ,'8-922-269-80-69')
,(7, '������ ���� � 858 �� 72'            ,10,2,true ,'8-919-920-41-55')
,(8, '������ ����� � 777 �� 72'           ,4,1,true ,'8-904-491-35-99')
,(9, '������ ����� � 143 �� 72'           ,4,1, true ,'8-904-494-92-41')
,(10,'������ ����� � 196 �� 72'           ,4,1, false,'+7 950 490 58 00')
,(11,'������ ����� � 901 �� 72'           ,4,1, false,'8-929-263-37-70')
,(12,'������ ����� � 999 �� 72'           ,4,1, true ,'8-929-263-37-70')
,(13,'������ ���� �� 767 66'              ,10,2,false,'+7 919 920 41 55')
,(14,'������ ����� � 467 �� 72'           ,4,1, false,'+7 982 945 12 97')
,(15,'������ ����� � 981 �� 72'           ,4,1, false,'8 932 321 72 73')
,(16,'�������� Sprinter ��192 72'        ,16,2,false,'89199204155')
,(17,'������ ����� � 777 �� 72'           ,4,1, false,'+7 961 213 08 61')
,(18,'�������� ���������� ������ � 400 ��',2,1, false,'8 952 343 28 46')
,(19,'������ ����� � 579 �� 72'           ,4,1, true ,'8-929-263-37-70')
,(27,'������ ����� � 901 �� 72'           ,4,1, false,'+7 922 471 52 34')
,(20,'������ ����� � 888 �� 72'           ,4,1, true ,'8-909-185-54-41')
,(21,'������ ����� � 111 �� 72'           ,4,1, false,'+7 906 820 99 60')
,(22,'������ ����� � 676 �� 72'           ,4,1, false,'+7 922 045 62 77')
,(23,'������ ����� � 007 �� 196'          ,4,1, false,'8 929 247 71 16')
,(24,'Toyota Land Cruiser � 001 �� 72'    ,4,1, false,'8 919 939 27 88 ')
,(25,'������ ����� � 111 �� 72'           ,4,1, false,'8 (904) 491-35-99')
,(26,'�������� �������� �� 153 72'        ,18,2,false,'8 929 263 31 02 (������� ����������)')
;	

-- public."WaypointType" definition

-- Drop table

DROP TABLE public."WaypointType";

CREATE TABLE public."WaypointType" (
	"Name" text NULL,
	"Comment" text NULL,
	"AddresTemplate" text NULL,
	"RequiredWaypointComment" bool NULL,
	"OptimisticLockField" int4 NULL,
	"IsDefault" bool NULL,
	"IsSystem" bool NULL,
	id serial4 NOT NULL,
	CONSTRAINT waypointtype_pk PRIMARY KEY (id)
);

INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('��������� �.�.',NULL,'��. ���������, �. 51, ����. 1',false,1,false,false),
	 ('��������',NULL,'��. ��������������, 4 � ��������',false,0,false,false),
	 ('�����',NULL,'��. �����������, 2 � �����',false,0,false,false),
	 ('�������� ������ ����������','89634551866','�������� 63',false,1,false,false),
	 ('�������',NULL,'��. �������� 79/1',false,0,NULL,true),
	 ('�����',NULL,NULL,false,2,true,true),
	 ('������������',NULL,'��. ������������ 5',false,0,false,true),
	 ('�/� ������','��� ������� �� ������: ������� ����� ����������� ������ �� ���������� (�� ���������� �������)
��� ������� �� �������: ������� ����� ������, ������� ��� ���������� � ����� �������� �� ���������� (�� ���������� �������)','�/� ������, ��. �������������, 22',true,1,false,true),
	 ('������',NULL,'�� "������", ��. ����������� 19',false,1,false,true),
	 ('���',NULL,'���, ��. ������� ��������, 42',false,2,NULL,true);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('��������','��� ������� � ��������: ������� ����� ������ ����� �� ����������
��� ������� � ���������: ������� ����� �����, ������� ��� ���������� � ����� ������� ����� �� ����������','�������� "������", 
��. ������ ��������, 10',true,3,NULL,true),
	 ('����',NULL,'�������� ����� ��� ��������',false,0,false,false),
	 ('���� 2',NULL,'�������� ����� 2',false,0,false,false),
	 ('������� �.�.',NULL,'��. ���������, �. 5',false,0,false,false),
	 ('��������',NULL,'��. ��������, 10� - ��������',false,1,false,false),
	 ('����������� �.�.',NULL,'��. ���������� �����������, �. 6 ',false,0,false,false),
	 ('������ �.�.',NULL,'��. ������� ����, �. 2, ������� 2',false,0,false,false),
	 ('�������� �.�.',NULL,'��. ������� �������, �. 81',false,0,false,false),
	 ('���������� 89829131114',NULL,'��. ������������������, 30  ',false,1,false,false),
	 ('�������� 89634551993',NULL,'��. ���������, 3 ',false,1,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('����� ��������� �.�.','89097402722','�������� 55',false,0,false,false),
	 ('����� �������� �.�.',NULL,'��. 50 ��� ������� 3
7 922 263 87 60',false,0,false,false),
	 ('����� �������� �.�.',NULL,'��. ��������� 84 �.3.
���. 89129909452',false,2,false,false),
	 ('����� �������� �.�.',NULL,'��. 25 �������, �. 34.
89097344559',false,1,false,false),
	 ('����� ������� �.�.',NULL,'��. ������� ����������� 17 
8-922-265-67-13',false,0,false,false),
	 ('����� ������� �.�.','89634551760','��. �����������. 64
',false,0,false,false),
	 ('����� �������� �.�.',NULL,'��. ���������, �.140
+79612000977 ',false,0,false,false),
	 ('����� ������� �.�.',NULL,'��. ���������-�������, ��� 36
89173536352',false,0,false,false),
	 ('����� ����������� �.�.',NULL,'��. �������, �.20
+7 922 005 83 99',false,0,false,false),
	 ('�������� �.�.',NULL,'50 ��� ������� 57�, ������� 2',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('������� ������ �������������',NULL,'������� ��������, 68',false,0,false,false),
	 ('��������� ����� ������������',NULL,'��. ������� ��������, �68 �.3',false,0,false,false),
	 ('�������� ����� ��������',NULL,'�������� 190 ������ 4',false,0,false,false),
	 (' ������� ������ ���������� ',NULL,'���������� ������ 1',false,0,false,false),
	 (' ������� ������ ���������� ',NULL,'��. �������� 35, ������ �������',false,0,false,false),
	 ('����� ������� �.�.',NULL,'��. �����������������, 199 ����.1
89825635090',false,1,false,false),
	 ('�����_89292637056',NULL,'��. ����������, 1, ����.2 ',false,0,false,false),
	 ('������� ����� �������������',NULL,'��. �����������, ��� 27',false,0,false,false),
	 (' �������� ���� ������������� ',NULL,'��. ������� ��������, �.15 (��������� � ��������� �� ������� ��. �. �����������)',false,0,false,false),
	 (' �������� ����� ������������� ',NULL,'������ �������� �.39/1',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('������� ��������� ��������',NULL,'��. ����������� 15',false,0,false,false),
	 ('������ ������ ������������� ',NULL,'����� 30/4 ',false,0,false,false),
	 ('������������ ������ ��������� ',NULL,'��. ��������, �.46',false,0,false,false),
	 ('������� 89222677042 ',NULL,'��. ������������ 9/1',false,0,false,false),
	 ('������ 89634551845',NULL,'��. �����������, 4',false,0,false,false),
	 ('�������� 89220450975',NULL,'��. ������ 73 ����.1',false,0,false,false),
	 ('����� 89292637296',NULL,'��. �����������, 5',false,0,false,false),
	 ('�������',NULL,'��. ��������, 90 � �������',false,0,false,false),
	 ('������',NULL,'��. ������� �����������, 11, �.3 � ������',false,0,false,false),
	 ('�������',NULL,'��. �����������, 29 � �������',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('�������� �����',NULL,'������ �������� �.14',false,0,false,false),
	 ('����� ������� �.�.',NULL,'��. ��������, 90
89829316292',false,0,false,false),
	 ('����� ���������� �.',NULL,'��. ������������ �.7 ��.86
89829128332',false,0,false,false),
	 ('�������',NULL,'��. ������� ��������, 68, �.2 � �������',false,5,false,false),
	 ('������',NULL,'��. ������������, 30, �.3 � ������',false,0,false,false),
	 ('��������������',NULL,'��. ���������� 143�',false,0,false,false),
	 ('��������� ������� ���������',NULL,'�������� 46',false,0,false,false),
	 ('����� ������� �������������',NULL,'��. ������� ������� 104/2',false,0,false,false),
	 ('������� 72',NULL,'������� 72',false,0,false,false),
	 ('�����',NULL,'������� �.72',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('�������',NULL,NULL,false,0,false,false),
	 ('���������������� 1',NULL,NULL,false,0,false,false),
	 ('����� ��������� �.�.',NULL,'�����������, 80
+79129915517',false,0,false,false),
	 ('����� ���������� �.',NULL,'��. �.-�.�.�����, 26 
-89996749529',false,1,false,false),
	 ('������ ��������� ����������',NULL,'����� ��������� 76, ������� 3',false,0,false,false),
	 ('��������',NULL,'��. ��������, �. 15, 4 �������',false,0,false,false),
	 ('�������� �����',NULL,'�������� 29 ��.124',false,0,false,false),
	 ('�������� 89634551972',NULL,'��. �������, 27',false,0,false,false),
	 ('������� 89199395620',NULL,'��. ����-���������� �.19 ',false,0,false,false),
	 ('�������� 89224734344',NULL,'��. ����������, 9',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('��������� 89634551966',NULL,'��. ������������ 7/1 ',false,0,false,false),
	 ('���������� ���� 89068752898',NULL,'��. ���������, 6',false,0,false,false),
	 ('��������� 89028182049',NULL,'��. �����������, 80',false,0,false,false),
	 ('�������� 89224746882',NULL,'������ 5 ���������� ��� 28',false,0,false,false),
	 ('����� ��������� �.�.',NULL,'��. �����������, 15
89199437251',false,0,false,false),
	 ('����� ������� �.�.',NULL,'��. ���������, 1 
89224823879  ',false,0,false,false),
	 ('������',NULL,'��. ������������, 7 � ������',false,0,false,false),
	 ('��������',NULL,'��. ��������, 24 � ��������',false,0,false,false),
	 ('��������� ������������ ��������� ����������� �������� �����',NULL,'�.������ ��. ������������������ 14�',false,0,false,false),
	 ('������_89991304408',NULL,'��. ������������, 9',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('������_89199310084 ',NULL,'��. �����������, 80 ',false,0,false,false),
	 ('������� 89199201220',NULL,'��. �����, 32, ����.1',false,1,false,false),
	 ('�������_89224816216 ',NULL,'������ ��������, ��� 14 ',false,0,false,false),
	 ('�������� ��������� ��������� ',NULL,'��������������, 4 ',false,0,false,false),
	 ('����� ������� �������� ',NULL,'��������� 18, 3 �������',false,0,false,false),
	 ('����� ����� ����������  ',NULL,'��. ����������� 57/3',false,0,false,false),
	 ('��������� ������ ��� "���� �� ���������� ��"','���� ������ ���� �� 16:20','�.������, ��.����������, �.55, ��.208',false,0,false,false),
	 ('��������� ������ ��� "���� �� ���������� ��"',NULL,NULL,false,0,false,false),
	 ('��������� ������ ��� "���� �� ���������� ��"',NULL,'�. ������, ��. ����������, �. 55, ��. 208.',false,0,false,false),
	 ('������_89121073488',NULL,'��. �����������,37',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('�������_89634551920',NULL,'��. ���������, 52',false,0,false,false),
	 ('������_89220718070',NULL,'��. ����� 30/4',false,0,false,false),
	 ('�������_89048881840',NULL,'��. �.��������, 68 ',false,0,false,false),
	 ('������������_89634551929',NULL,'��. ��������, 46',false,0,false,false),
	 ('�������� ��������� ���������',NULL,'��������� ������, ��� 7 ������� 10
',false,1,false,false),
	 ('������� ���� ���������� ',NULL,'������������, 7',false,0,false,false),
	 ('������� ���� ������ ���� ',NULL,'������� ��������, 28',false,0,false,false),
	 ('������ ������� ������������ ',NULL,'��������, 190/2',false,0,false,false),
	 ('�������� ��������� ��������',NULL,'��. �������� 190, ����. 3',false,0,false,false),
	 ('�������� ������� ���������� ',NULL,'��� ��������� ����� ������, ��. �������� 118 �.2',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('������ �������� ����������',NULL,'������������ 18',false,0,false,false),
	 ('���',NULL,'������ �������� 48�',false,0,false,false),
	 ('�������� ������� ��������',NULL,'��. �����, � 12, ������ 1',false,0,false,false),
	 ('�������� �����',NULL,'������� 72',false,0,false,false),
	 ('������� ������ ����������',NULL,'����������, ��� 7 ',false,0,false,false),
	 ('�������',NULL,'�.���������, ��. ���������, 13 � �������',false,0,false,false),
	 ('����������',NULL,'��. ��������, 173, �.2 � ����������',false,0,false,false),
	 ('������',NULL,'��. ��������, 29 � ������',false,0,false,false),
	 ('���������� ��������� ������������� ',NULL,'�. ����������, ��. �����������, 28',false,0,false,false),
	 ('����� ������������ �.�.',NULL,'��. �������� 4, ����.2',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('�������',NULL,'��. �����������, 30',false,0,false,false),
	 ('���������',NULL,'��. ������������, 56/2',false,0,false,false),
	 ('�������� ���������� ���������',NULL,'��. ������� 135�',false,0,false,false),
	 ('������� �.�.',NULL,'��. ������� ����������, �. 4, ������� 1',false,0,false,false),
	 ('������ �.�.',NULL,'��. ��������, �. 136, ����. 5, ������� 2',false,0,false,false),
	 ('������, ��. ���������� �.5, ����.1',NULL,'������, ��. ���������� �.5, ����.1',false,0,false,false),
	 ('������-����',NULL,'�� ������,
��������� �����, ������',false,1,NULL,true),
	 ('������� ����� ����������',NULL,'������� �������� 59',false,0,false,false),
	 ('������ ��������� �������������',NULL,'������� ��������, �� ������, �.17',false,0,false,false),
	 ('����� ��������� ������������',NULL,'��. �������, �.37',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('��������','���� S7-2622 ����� � 06.35','�������� ������, ������ ��������, 10',false,0,false,false),
	 ('������_89634551825',NULL,'��. ���������, 3',false,0,false,false),
	 ('�������_89634551810',NULL,'������ ����������, 1',false,0,false,false),
	 ('������� ������ �������������',NULL,'������� ����������� 37',false,2,false,false),
	 ('������_89234454947',NULL,'��. 50 ��� �������, 57�.',false,0,false,false),
	 ('����������� �������� �������',NULL,'��. ���������� 252',false,0,false,false),
	 ('��������_89044954677',NULL,'��. ��������, 170, ����.1 ',false,0,false,false),
	 ('�������_89969460952',NULL,'��. ��������, 58�',false,0,false,false),
	 ('�����_89923067399 ',NULL,'��. ��������, 39',false,0,false,false),
	 ('����',NULL,'��. ����������, �.55',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('��������_89199390906',NULL,'��. ����� ������, 2',false,0,false,false),
	 ('��������_89129455778',NULL,'��. 50 ��� �������, 57�',false,0,false,false),
	 ('������_89129293990',NULL,'��. ���������-�������, 58, ����.2',false,0,false,false),
	 ('��-������������',NULL,'��.������, �.67',false,0,false,false),
	 ('��������� ���',NULL,'��. �������, 88',false,0,false,false),
	 ('��������',NULL,'��. ��������, 5 - ��������',false,0,false,false),
	 ('������� �.�.',NULL,'��. 50 ��� �������, �. 82, �.3',false,1,false,false),
	 ('������������ �.�.',NULL,'��. ������, �. 73, �.1',false,0,false,false),
	 ('������� �.�.',NULL,'��. �����������, �. 136, ������ 3',false,0,false,false),
	 ('�������� �.�.',NULL,'��������, ��. �����������, �. 39',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('�������_89199385689',NULL,'��. ����������, 8',false,0,false,false),
	 ('�����_89048755974',NULL,'��. �����������, 112',false,0,false,false),
	 ('��� "��-������������"',NULL,'��. ������, 67',false,0,false,false),
	 ('�������_89123850945',NULL,'��. 50 ��� �������, �. 57�',false,0,false,false),
	 ('��������',NULL,'������ �������� 14, 3-� �������',false,0,false,false),
	 ('������� ������� ���������',NULL,'��. ������ �������� ��� 41 ',false,0,false,false),
	 ('�������� ����� ����������',NULL,'���. �������� �. 1 ',false,0,false,false),
	 ('�������',NULL,'��. �������, 96 � �������',false,0,false,false),
	 ('��������',NULL,'50 ��� ������� �.14',false,0,false,false),
	 ('����������������',NULL,'�������� 7�',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('������� �.�.',NULL,'50 ��� ������� 44',false,0,false,false),
	 ('��� ���� "���� ������',NULL,'24 �� ������������� ������',false,0,false,false),
	 ('�������� �����',NULL,'������� �������� 28',false,0,false,false),
	 ('�����_89222650882',NULL,'��. �����������, 2',false,0,false,false),
	 ('��������_89058204115',NULL,'��. ��������������, 4 ',false,0,false,false),
	 ('��������� ������ ���������__89061177333',NULL,'����� ������������, 46, ��������� DoubleTree by Hilton',false,1,false,false),
	 ('�������� 63',NULL,'�������� 63, 4 �������',false,0,false,false),
	 ('�����',NULL,'������������, �.26
',false,0,false,false),
	 ('�������_89220461515',NULL,'�. ���������, ��. ���������, 13 ',false,0,false,false),
	 ('����� 1',NULL,'50 ��� �����, �.15',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('������ �����_89634551968',NULL,'��. ���������, �. 53, ����.1',false,0,false,false),
	 ('���� ����������� ����������� ',NULL,'��. ��������� �. 16',false,0,false,false),
	 ('2 ��������� ��������� ����������� ��������',NULL,'��. ��������� �. 75 � 2',false,0,false,false),
	 ('�����',NULL,'��. ������ �.55 ���1',false,0,false,false),
	 ('������� 89634512579',NULL,'��. ������������, 18 ',false,2,false,false),
	 ('��������_89829358668',NULL,'��. �����������, 2, ����.4 ',false,0,false,false),
	 ('��� � 2',NULL,'��. ����������� �. 75 �. 2',false,0,false,false),
	 ('��� � 2',NULL,'��. ����������� �. 75 �. 2',false,0,false,false),
	 ('����������_89279248020',NULL,'��. ���������, �. 67',false,0,false,false),
	 ('����� ������ �.�.',NULL,'��. ���������� ?
89224732814',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('�������_89044927720',NULL,'��. �����������, 29 ',false,0,false,false),
	 ('��-������������, ',NULL,'��. ������, 67',false,0,false,false),
	 ('��-������������',NULL,'��. ������, 67',false,0,false,false),
	 ('������_89028180555',NULL,'��. ��������, �.168, ����.2, ������� 3',false,0,false,false),
	 ('������_89222699976',NULL,'��. �����, 26',false,0,false,false),
	 ('��������_89199345556 ',NULL,'��. ���������, 70�',false,0,false,false),
	 ('�������� �����',NULL,'��. �����������, 70 ����. 1',false,0,false,false),
	 ('��������_89199427844',NULL,'��. �����������, 4',false,0,false,false),
	 ('����� ����������',NULL,'������, ��.������������, �.26',false,0,false,false),
	 ('����������� ������������ �������',NULL,'��. ���������� 252',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('���',NULL,'��������� �. 10',false,0,false,false),
	 ('������������� �. ������',NULL,'��. ������������,20',false,0,false,false),
	 ('���.�����',NULL,' ��. ������������ 32 ����.1',false,0,false,false),
	 ('��-������������',NULL,'������, 67',false,0,false,false),
	 ('������������, ������, 67',NULL,NULL,false,0,false,false),
	 ('���',NULL,'��. ���������, 16',false,0,false,false),
	 ('����� �������� � �������������� ������������ �� ���������������� �� ���� �� ��������� �������',NULL,'����������, 55',false,0,false,false),
	 ('������������',NULL,'��. ������������, 5',false,0,false,false),
	 ('����� �������� ����. ������',NULL,'��. ����������������, 70 �.3 ��.6',false,0,false,false),
	 ('������ ��� �������� ����. ������',NULL,'��. ����������������, 70 �.3 ��.6',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('��������',NULL,'��. ������� ��������, 15 � ��������',false,0,false,false),
	 ('����',NULL,'��. ���������, 73 � ����',false,0,false,false),
	 ('��� "���-������"',NULL,'��. �������������, 47',false,0,false,false),
	 ('����������� "����� ������"','����� ����������� �������� ��������','����� ������� ����������, 1',true,0,false,false),
	 ('����������� "����� ������"',NULL,'��. ������� ����������, 1',false,0,false,false),
	 ('������������� �������� "������� �������"',NULL,'����� ���������� �����, 133',false,0,false,false),
	 ('����������� �������� ���',NULL,'������, ��, �������, �. 1�, ���. 1',false,0,false,false),
	 ('����',NULL,'50 ��� �������, 3/4',false,0,false,false),
	 ('��-������������',NULL,'������, 67',false,0,false,false),
	 ('���.�����',NULL,'�. ������, ����� ������������, ��� 32',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('�����_89097361993',NULL,'��. ����������, 187',false,0,false,false),
	 ('����_89129222627',NULL,'��. �����������, 9',false,0,false,false),
	 ('�������� �_89199350530',NULL,'��. �. ��������, 10, ����.1',false,0,false,false),
	 ('������_89124929338',NULL,'��. �����������, 57, ����.2',false,0,false,false),
	 ('������� ���',NULL,'�������� 4/1',false,0,false,false),
	 ('���',NULL,'������ �����, �.2, ������� 4.',false,0,false,false),
	 ('����',NULL,'��. ��������, �. 79/1',false,0,false,false),
	 ('��� ����������',NULL,'����������� �.120 ������� 1',false,0,false,false),
	 ('��. �������, 88 ',NULL,NULL,false,0,false,false),
	 ('����������� ������������ �������',NULL,'��. ���������� 252',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('������-��������� ���������� ����������� ������ �� ��������������, ���������������� � �������� �������',NULL,'���������, 10',false,0,false,false),
	 ('���',NULL,'��.���������������� �.23, ������ 1,',false,0,false,false),
	 ('���',NULL,'��.���������������� �.23, ������ 1,',false,0,false,false),
	 ('���',NULL,'��. ������� 50',false,2,false,false),
	 ('�/� ������',NULL,'�/� ������ �. ������, ��. ������������� 22',false,1,false,false),
	 ('�����',NULL,'��������� 32',false,0,false,false),
	 ('����������� ������������ �������',NULL,'�. ������, ��. ����������  �. 252',false,0,false,false),
	 ('��� "��������� ���"',NULL,'��. �������, �.88',false,0,false,false),
	 ('�������_89129043397',NULL,'��. ���������-�������, ��� 58/3',false,0,false,false),
	 ('�������_89227946097',NULL,'��. ���������, 65',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('����������� ���',NULL,'��. ����������, 252',false,0,false,false),
	 ('������ ������� �������������',NULL,'���� 57',false,0,false,false),
	 ('���� 57',NULL,NULL,false,0,false,false),
	 ('������� ����� ������������',NULL,'������������ 4/2',false,0,false,false),
	 ('���',NULL,'��. ������������ 4/2',false,0,false,false),
	 ('��������� ���� ������������',NULL,'�. ������, ��. �������  �. 37 ������ 1, ��. 87',false,0,false,false),
	 ('��������� ������ ��� ���',NULL,'�������� 75',false,0,false,false),
	 ('������������ 13',NULL,'������������ 13',false,0,false,false),
	 ('������������ 27',NULL,'������������ 27',false,0,false,false),
	 ('������� 52',NULL,'������� 52',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('��������� 67',NULL,'��������� 67',false,0,false,false),
	 ('�������',NULL,NULL,false,0,false,false),
	 ('���',NULL,NULL,false,0,false,false),
	 ('��� "�����������������"',NULL,'��. ���������� 252',false,0,false,false),
	 ('��-������������',NULL,'������, 67',false,0,false,false),
	 ('�������',NULL,NULL,false,0,false,false),
	 ('��-������������',NULL,'������, 67',false,0,false,false),
	 ('��������- ����� � �. ������',NULL,'��. ���������, �. 65, ������� 3',false,0,false,false),
	 ('������� ������� ������������',NULL,NULL,false,2,false,false),
	 ('�� "�������������"',NULL,'�� �Gazoil Plaza�, �. ������, ��. ����������, 143�',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('�������','��. ���������� 252- ��. �������� 79/1 - ��. ���������� 252','��. �������� 79/1',false,0,false,false),
	 ('����� �������� ��������� ��������� 
',NULL,'��������� ������, 7
8 937 348 40 30',false,1,false,false),
	 ('����� �������� ����� ��������
',NULL,'�. ������, ��. �������� 190�4 �� 50
+79634547072',false,1,false,false),
	 ('��� "�������� �������"',NULL,'���������, �. 56',false,0,false,false),
	 ('��� "�������� �������"',NULL,'��. ���������, �. 56',false,0,false,false),
	 ('��������� ����� ������������, 79224778888
  
','������� �������� ��.������, �.40','������� �������� ��.������, �.40
',false,1,false,false),
	 ('��������_89044974157',NULL,'��. ���������, 71, ����.3',false,1,false,false),
	 ('���������� ��������� �������������, +7-929-263-70-01','�. ����������, ��. �����������, �28','�. ����������, ��. �����������, �28',false,0,false,false),
	 ('�������� ��������� ���������, +79058200754','��. �������������� 4','��. �������������� 4',false,0,false,false),
	 ('������� ���� ������-����, 8-922-485-05-55','��. ������� ��������, 28','��. ������� ��������, 28',false,0,false,false);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('�������� ������� ����������, 89068206358','��� "�������� ����� ������", ��.�������� 118�2','��� "�������� ����� ������", ��.�������� 118�2',false,0,false,false),
	 ('������ ��������� ����������, 8-908-866-44-73','�. ������ ��. ��������� �.7 ��. 79','�. ������ ��. ��������� �.7 ��. 79',false,0,false,false),
	 ('��������� �������� ������������, 89220725844','��. ���������� ����� 83/2','��. ���������� ����� 83/2',false,0,false,false),
	 ('�������� ������� ����������, 89634551793','���. ����������, ��. ����������� 9','���. ����������, ��. ����������� 9',false,0,false,false),
	 ('����� ������� ��������, 89220463420 ','��������� 18-53 ( 3 �������)','��������� 18-53 ( 3 �������)',false,0,false,false),
	 ('������� ������ ����������, +79220908647','��.������� �������� �.83, ������� 2.','��.������� �������� �.83, ������� 2.',false,0,false,false),
	 ('����������� ������������ �������',NULL,'����� ����������, 252',false,0,false,false),
	 ('����������� ������������ �������',NULL,'����� ����������, 252',false,0,false,false),
	 ('����������� ������������ �������',NULL,'��. ���������� 252',false,0,false,false),
	 ('����������� ������������ �������',NULL,'��. ���������� 252',false,0,false,true);
INSERT INTO public."WaypointType" ("Name","Comment","AddresTemplate","RequiredWaypointComment","OptimisticLockField","IsDefault","IsSystem") VALUES
	 ('���',NULL,'��. ������ �������� 14',false,0,false,false),
	 ('�������� ������� ��������, +7 (963) 455 18 97',NULL,'��. �����, �.32.',false,0,false,false),
	 ('������� ������� ������������, +7-904-492-77-20',NULL,'����������� 29',false,0,false,false),
	 ('��� ��������, ������-���������� �����',NULL,'?���� ���������, 8 ��1',false,0,false,false),
	 ('��� "����"',NULL,'��. ������� 88',false,0,false,false),
	 ('��� "����������������"',NULL,'��������, 7�',false,0,false,false),
	 ('���������_89220471375',NULL,'��. ����������������, 2',false,0,false,false),
	 ('���������_89068189459',NULL,'��. ���������, 65',false,0,false,false);
	
	-- public."Waypoint" definition

-- Drop table

DROP TABLE public."Waypoint";

CREATE TABLE public."Waypoint" (
	"Oid" uuid NOT NULL,
	"Order" int4 NULL,
	"UserTime" timestamp NULL,
	"Destination" text NULL,
	"Comment" text NULL,
	"DriverShift" uuid NULL,
	"State" int4 NULL,
	"ObjectType" int4 NULL,
	"Owner" uuid NULL,
	"OrderType" int4 NULL,
	"WaypoinType" int4 NULL,
	passenger int4 NULL,
	CONSTRAINT "PK_Waypoint" PRIMARY KEY ("Oid")
);

INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('ecb21fd2-3bf6-4b93-a633-b6da7cbb8eae',0,'2022-06-02 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5c5a1b19-f6ff-4586-ad45-392677a755ec',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('2ec14fb3-9a7c-4649-bacc-4cdeb1f714df',0,'2022-06-03 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b951ebdf-74b9-428a-b626-79e763ac27fe',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('f9adcdbc-b897-4c00-8f4e-c2acf5ea98b3',0,'2022-06-06 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('19a28e5b-a5e3-4eb7-837d-c078dc4d5853',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('f1051e1d-4420-4cc0-88e6-d5bc0f5749e7',0,'2022-06-07 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('df76fccf-12db-4f4e-aba8-d98d9c9a0ac5',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ed6f50c0-ca54-481b-9055-646e9a93b01c',0,'2022-06-20 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c3978942-1fbb-44a4-8672-0687ec607402',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('2f219b52-4ae4-457b-83e1-297d2c324cad',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ab6fe896-1e78-43ed-8fd7-e8f24ed2907d',0,'2022-06-21 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('0041184f-971c-4710-8a7e-74c1f7d4a3f4',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fa878edd-6fd8-4a61-8382-a1f2e769a07d',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a2186826-8971-4866-ac7f-a37e9a0d833e',0,'2022-06-22 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('56339df9-4076-48f4-886d-c2672d816fdc',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('7c2fe70d-0428-43c3-a684-76abe024186f',0,'2022-06-23 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('0055ac04-c27a-42b6-9530-c5274c1e3d6f',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c94b2535-3b4c-4866-8ecb-abc75be23a37',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('caea092c-a9a1-4ccd-af2e-dd60e7354d5b',0,'2022-06-24 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('e5586446-a0ae-4159-a8a1-187cb00e3183',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7fa3de8b-98d1-4f63-8008-5626b6b850af',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('e2b885b4-04e6-4fda-aed4-e544f94ff3b7',0,'2022-06-27 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7764b56c-af18-4ba3-83a9-3bd9a03d6775',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e6da1d78-5a25-4db0-8b54-69908c6b9c6c',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('d575304c-05cd-4c7e-96a8-651694672810',0,'2022-06-28 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('359b1b99-3520-4fa3-939b-8c384bae2322',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('54ca4f34-b37e-4f50-9c20-efdd51ef159b',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('b8b21a47-c637-49cd-8390-537c03613304',0,'0222-06-29 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4179282f-9360-443f-8518-bae007aa734c',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('56375212-b15a-44f4-bd69-77d1a28cbf22',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('51f5d42d-82dd-4b6c-852d-a914f85fd6c4',0,'2022-06-30 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('124ec774-0e6f-4295-ae01-5623c35a0e93',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('213e984a-7c8a-4af4-81af-27a66eb48af4',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('fa34728f-a8c8-401a-863e-2c988226567d',0,'2022-06-16 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2bd7f799-f478-4ff4-b938-491eb760ce85',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1e1ae805-3609-431c-acb5-4e1924be028e',0,'2022-05-24 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('fcda0cb2-8057-4e97-9f38-2f6abea5dd10',0,'2022-06-17 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2e0f439e-019a-4b23-8992-da969059db5e',0,'2022-07-01 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('699177b7-f22e-4934-a120-fec459ef026a',0,'2022-05-25 10:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('d32acc8c-617a-47f4-9261-b816eb2fa3a7',0,'2022-05-25 00:00:00','��. ������ �. 67 ',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('4fce19d3-7b84-4c67-b259-6d81d3fc6500',0,'2022-05-25 14:20:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('14e9fd9a-cdf6-45d7-ae62-c4365e1123d1',0,'2022-05-25 00:00:00','����������������, 70',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0595a863-8824-48ae-a2ab-40619ad7e4b4',0,'2022-05-25 14:15:00','��. ������������ 5',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('ecdf4bd8-bfd5-4d07-8f84-cbdf6f8ec165',0,'2022-05-25 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('2f17fc87-5389-45a9-aa61-a919fb04a088',0,'2022-05-25 00:00:00','�� "������"  ������ ������ �������, 2�, �.1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6d51bf79-561b-49fa-a0ac-93fcf44d6cc4',0,'2022-05-28 09:30:00','��. �������� 79/1','��������� ������� ���� � ������ � ������� 27.05',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('8702ca27-1208-4142-a538-9dc8ce816f6f',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('9234ffb4-a068-405f-b630-7b2dbb06e621',0,'2022-06-09 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('12e8775a-8429-4c69-8367-a8b12e70f27d',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('c1d02112-2ada-4c1b-8c29-c95a6cdb6ded',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('78fc54a9-3ab7-4ffc-8ccd-eb81e3433275',0,'2022-06-10 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1333796c-b630-4726-b82b-9834abe201d6',0,'2022-05-26 10:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7b9935ff-3039-4b90-a444-c4623908b5b1',0,'2022-05-25 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c467d048-d653-4fe7-a5ec-c2b2d9e78d1a',0,'2022-05-26 18:10:00','�������� "������", 
��. ������ ��������, 10','���� S7 4110 ����� �������-������ ',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('48435d8e-877f-47a3-9b0b-bc15f95d4232',0,'2022-05-26 00:00:00','��. ��������, �. 120',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('e945a04b-9328-45b2-877b-7be2d8c408f7',0,'2022-05-26 18:10:00','�������� "������", 
��. ������ ��������, 10','���� S7 4110 ����� �������-������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('606b18ff-c168-45a5-b959-1a656f9ab866',0,'2022-05-26 00:00:00','��. ��������, �. 21',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('d544da40-40b2-47fe-9b43-5462640fc139',0,'2022-05-26 11:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e0b0795a-29e5-4fec-bcf6-70d1196301e0',0,'2022-05-26 00:00:00','������ 12/2',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('484d5738-cbc0-4ddc-8ff7-c34a4bbac286',0,'2022-05-27 09:30:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b77bd961-9a33-4415-87e7-ecbf7fd77926',0,'2022-05-26 00:00:00','��. ���������� 252',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('e327ced8-20c3-4f8d-b576-d4bf6d167263',0,'2022-05-26 14:30:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('31c15396-ca3e-4bc0-9c2c-609506c3e4fd',0,'2022-05-26 00:00:00','��. �������, 2',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('b3143d06-4b0b-460c-81be-9d8380fce98c',0,'2022-05-24 00:00:00','������ ��������, 39�, ����.1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0da21f40-20b6-4d8e-9fc5-d9c24fffdc30',0,'2022-05-27 15:05:00','�/� ������, ��. �������������, 22','����� �107� �������������-������, ����� �� �. ������������� � 21:19 26.05.2022, �������� � �. ������ � 15:05 27.05.2022.',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('8728602c-ee43-4179-b3a0-149ac9229e6e',0,'2022-05-27 15:05:00','�/� ������, ��. �������������, 22','����� �107� �������������-������, ����� �� �. ������������� � 21:19 26.05.2022, �������� � �. ������ � 15:05 27.05.2022.',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d484cc05-565c-4b88-b090-4584fb3cc4c7',0,'2022-05-24 00:00:00','��. ���������, 20',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a8afd1d3-5506-4f86-8642-cc61ac18001f',0,'2022-05-27 18:10:00','�������� "������", 
��. ������ ��������, 10','���� YC-146 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e415bc19-2cfe-4526-8944-9c9e5b9fbc0b',0,'2022-05-26 00:00:00','��. ���������, 63',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('4c571799-fcc2-49cf-900a-7220a0e9489a',0,'2022-05-27 18:10:00','�������� "������", 
��. ������ ��������, 10','���� YC-146 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e5c2a8e8-1861-473b-8afc-3e2aa6f8292f',0,'2022-05-26 00:00:00','��. ���������, 66',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('6062f7b0-344c-4d8b-bae8-3e84e0e6ee22',0,'2022-05-27 18:10:00','�������� "������", 
��. ������ ��������, 10','���� YC-146 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('095483e7-106d-45f6-9409-39b048f1003b',0,'2022-05-26 00:00:00','��. ���������, 40',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('6e9a813b-456c-4469-a4fb-fe7860e713ac',0,'2022-05-27 09:45:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b9c0f98b-617f-4201-bf23-ba6276cf6808',0,'2022-05-26 00:00:00','����������������, 70',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('224b60ac-4322-4d71-ab64-f6df5b4b7b80',0,'2022-05-27 09:45:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('04169e1d-9d29-46eb-a5c3-56872bdd676a',0,'2022-05-26 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ce0ddb45-8477-42f8-8cf4-46b5505f478c',0,'2022-06-17 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d9f2abdd-a353-404d-8f37-63ac9d6aa830',0,'2022-05-27 15:05:00','�/� ������, ��. �������������, 22','����� �107� �������������-������, ����� �� �. ������������� � 21:19 26.05.2022, �������� � �. ������ � 15:05 27.05.2022.',NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('21344115-72fa-4efd-ab87-ff5dee983547',0,'2022-05-24 00:00:00','��. ���������, 41/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('59f51ba3-257a-4246-922d-2a9858ce0193',0,'2022-05-18 00:00:00','�������� "������", 
��. ������ ��������, 10','���� S7 5352 ������ - �����������, ����� � 15.40 28.05.2022',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('3426a78d-b281-4d1c-9d49-ed21e8f0fce4',0,'2022-05-28 18:50:00','�������� "������", 
��. ������ ��������, 10','���� ������ - ������ �� 1506, ����� �� �. ������ � 14.00 28.05.2022, �������� � �. ������ � 18.50 28.05.2022',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('dc99cd9a-3f64-4e62-85d9-55eafe057e6a',0,'2022-05-18 00:00:00','����������������, 22',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('d2bb4443-c88f-4d6f-8148-8184369b263d',0,'2022-05-29 18:50:00','�������� "������", 
��. ������ ��������, 10','���� �� 1506 ������-������, ����� �� �. ������ � 14.00 29.05.2022, �������� � �. ������ � 18.50 29.05.2022',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f9305034-636b-4fcd-8a75-737468a4a0b6',0,'2022-05-24 00:00:00','��. 50 ��� �������, 14. ����� �Mercure�',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('118f227a-45a4-45ac-b671-8210f7d5b863',0,'2022-05-25 00:00:00','�� ������� (������ ������ �������, 2�, �.1).',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('670ebf95-2bf0-45b5-8b39-f61816752780',0,'2022-05-26 16:30:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('52ad0fb2-468a-4448-8ad9-f4809b2013c6',0,'2022-05-26 00:00:00','��. ������������ 5',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('796f757e-92c0-42c0-984b-066832bbdbd1',0,'2022-05-27 13:35:00','�������� "������", 
��. ������ ��������, 10','���� UT-542 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('49717561-ee57-4fda-b042-1a1b75233b77',0,'2022-05-26 00:00:00','��. �����������, 58',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c1bac10f-ed6b-4b68-bcea-7d513f7471c9',0,'2022-05-27 13:35:00','�������� "������", 
��. ������ ��������, 10','���� UT-542 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c767109e-bd3c-4d18-82d4-0d7ff64314be',0,'2022-05-26 00:00:00','��. �������, 18',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('7656a522-0b6f-459a-875b-89e213355497',0,'2022-05-27 13:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f9308f58-6ba8-4dac-ad0b-84bf8064a5ee',0,'2022-05-26 00:00:00','��. ������������ 5',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('67a47d8a-b35a-4f7f-88b8-10b17ef3dc48',0,'2022-05-27 13:30:00','���������� 252',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('31269450-edf2-4347-8c5e-2956bc0aed34',0,'2022-05-27 00:00:00','���������� 252 - ��� - ���������� 252',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('684c6765-372b-4d6e-b7e9-2696228d2be7',0,'2022-05-27 14:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('41fc8e58-74ac-4c2b-894e-9a8a4913e5d0',0,'2022-05-27 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c5f5bb5f-96a3-4ba6-84db-736b3c8d31f7',0,'2022-05-27 10:45:00','��. �������� 79/1','+ 5 ����������',NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('1016ff48-8f0d-43e6-bc86-ee852293dfcd',0,'2022-05-27 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('9fd6a792-434f-4221-885e-5d1e284df767',0,'2022-05-30 09:10:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('dce14a89-e711-46a6-bacb-c4154ece4b90',0,'2022-05-27 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ca55c908-facc-49ff-9d7a-ed291f7891f3',0,'2022-05-30 09:10:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a7822286-1b2e-4957-bed7-e50383e50c9a',0,'2022-05-27 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('3ffcdf5f-0bfb-4f58-83d0-5ffb6e7dd42d',0,'2022-05-30 09:10:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4dd742cd-ca35-418a-893b-e50431217a61',0,'2022-05-27 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('b65674a7-153f-49cb-96d3-cddb719e3b48',0,'2022-05-30 09:10:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e1854853-7709-40a0-8410-a9c0199d4e33',0,'2022-05-27 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c5b6cb48-5660-473f-b28f-df6514c215c9',0,'2022-05-30 10:30:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('2ddd4998-21c0-4e68-9ce3-fd575a9932b9',0,'2022-05-27 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ad349f4f-ba9d-4d16-a907-1ae6e7b2acd0',0,'2022-05-30 10:30:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('638fec23-88e4-4ffe-817f-40ee8d37bcfa',0,'2022-05-27 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('52ee8695-fafb-4e88-9521-1fe1c42f2bfc',0,'2022-05-30 10:30:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('78e09643-8cee-4f09-8363-e0cda8d253d4',0,'2022-05-27 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('52c96230-3488-4eff-a108-5a5bf6c9d028',0,'2022-05-30 10:30:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('05efb560-12cc-4ea1-b9ff-227b2539fa7b',0,'2022-05-27 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('40f3eeca-6acd-4cf1-bf24-9b6c8de2e72c',0,'2022-05-11 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ab6ce3f3-bcf8-4fd5-9657-5a8df495bb94',0,'2022-04-20 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('71a7051f-9d77-4bd6-9c43-49946db34cee',0,'2022-05-18 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('43dec76d-f4cf-45d0-baf9-e00370b25501',0,'2022-05-18 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('aecaa7b6-f1f2-43cd-a1fe-20d03e77e36b',0,'2022-05-18 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('72ddde08-c54f-4918-9713-4fda36bfac2b',0,'2022-05-18 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('9dc54685-118f-4a8b-9f5f-a20974fa7e67',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1474911e-5083-41e0-be4c-7b268d438c5c',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('af7ac57f-2db8-4968-81dc-1606dc64586e',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('8f0ca820-9c34-4c5f-bacf-b3364899530a',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d147d62e-b565-46ed-be87-bc0e9a88f396',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('aee43bac-2fb1-4c68-8bb7-f2e262355554',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('bab0e023-d778-47b2-a0c5-a5e9bfcbcf3b',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('ac84bede-30ee-431d-8ba0-d36d157e99e6',0,'2022-05-31 18:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7aff8280-12fd-4c98-9bf5-dab9a4ed4737',0,'2022-06-01 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b5479c46-fe15-4b53-9c47-1cf35aeb6285',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('e5e45e66-7ab1-4dfb-b554-33521bff7bdb',0,'2022-06-02 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2d1d6ffe-1745-44ca-a561-fb0291107e64',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ec67586b-5412-43e7-8fb5-86710c79b32b',0,'2022-06-03 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('05b3b30f-2da9-4ef6-aa54-9bb1cacf7e20',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('418c1533-01f7-4566-ab2c-c61bd92f5986',0,'2022-06-06 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f8bc6c66-c8b1-41e7-bceb-fb2874e51732',0,'2022-06-07 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('dae97e9e-0281-4eff-b6c7-457fd8f65b6f',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('ab2a8103-37ea-4930-ac11-6b01ce0bb70d',0,'2022-06-08 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('35100358-7293-4971-9766-2602f5c47481',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('59570e65-d1d3-43d5-be5b-b548572e8af5',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('4742816b-80f3-44dc-aa70-eaa02b41cff7',0,'2022-06-14 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2d98eaaf-755b-4fcd-ad14-b0fef858d0e2',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('76e1cf54-6e48-41ce-b44a-403d6a232e9e',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0fe6d7b8-078f-4821-8c5f-d5a4cc6825c1',0,'2022-06-15 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('dc271282-7b3c-4ae6-8f63-ab4367fa7de5',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('172533eb-9824-47bd-92d5-9adaddac3693',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('d75e85d1-bb3a-4c43-acc3-02c31aee095d',0,'2022-06-16 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('57c87057-69a3-4357-8657-9791f5b3f6ad',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('cf66d2c0-a658-457f-9a75-862999126207',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('16586c27-6f1b-443f-a2f4-960506235109',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a3f37422-c828-4da8-95fc-754dd9fb6f54',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('2bf218a6-5b34-464c-9c42-8e204109e823',0,'2022-06-20 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c6ee0fdb-24a6-4a07-9bbe-56d2c081cc15',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('34c83570-6a4e-47b9-971c-88414c090b73',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('caf8bfc0-4b79-4827-98a1-a301ed668b8d',0,'2022-06-22 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1ce996da-48dd-4d4e-b3af-c02507bdbd25',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d370d643-41de-43b9-8281-1ebd4f054e1f',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('4f0386aa-3fcd-4399-be60-a397a3fb2202',0,'2022-06-23 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('eecebf64-840d-45b4-a569-b8fa52b63918',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6efc1988-22fe-40fd-a8f9-a60076023ce2',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('26361547-b6ad-40ee-8483-96390117e3ee',0,'2022-06-24 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2f4bc173-9816-4443-a526-5e72828f59f7',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7efec242-de6a-4fca-ac55-e661cc09c05c',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('5584eadd-af9d-4fa0-b26d-760233e052bf',0,'2022-06-27 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('0d7cdf18-f1c4-4c4a-8aae-7c63d3d292cb',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('be9ea0e1-02d1-4a4c-b077-9b516901f8a7',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('1ff8cdd5-e163-4c06-89f7-0d69b9c46fab',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('e36cd89a-ae15-4b69-9df1-cc621fc70d01',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('3d2a85b6-6d6f-4adf-a731-b6a8bf2a85e4',0,'2022-06-28 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('8be44b81-42ec-4651-b21f-c3e2ad1d7ce8',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5a549964-ec8c-4f1a-ae12-3830456b641c',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('e8ec751f-ca5e-40bc-add9-984523b5b05e',0,'2022-06-29 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f3f72c33-f886-49f2-a61e-01a578bd78d5',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('781419fe-f51c-4648-8444-b6f1703e9d84',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('42dd431e-eaa4-460b-a1d8-1ddd72dbbf6d',0,'2022-06-30 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c47b2609-3616-4e9c-8df5-ab069ea124b8',0,'2022-06-21 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('0494ff73-4b0a-43c8-9c04-70999a3d8d1b',0,'2022-05-30 16:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('efe92669-8928-4a56-9e91-beda620e91ca',0,'2022-05-30 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('025c8c33-42b0-4f43-ae2b-60fa6d13da9d',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('08f3f1a0-7eda-4a49-b1bb-43fa0f980bb9',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5be6480b-27ae-4462-ab19-c66f84101f53',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('25626f42-b2bf-4f32-b4c9-b829e5b1c2aa',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7101f6aa-9052-406a-8e42-a7f7276cbcd6',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c67f4812-fbe6-4158-812d-65f484548b1b',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c80b61a7-0308-412f-b46e-66810a89720e',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('8ee36402-e4b2-49c8-bd15-5e327ae494b1',0,'2022-06-09 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('0fcb7593-cbff-4617-b7ca-3050ecd197a0',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('83c71e23-0690-44c9-841f-dc618208eee2',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0020a570-d3e3-4b0b-93a0-aabc98b631cd',0,'2022-06-10 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('16b4a4ca-1008-4ae1-a931-179a459001bf',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('0a1e7517-67cb-4ac0-bee9-2cfe1c704741',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('5ffed144-adfc-4178-a6bf-b069184ed1c3',0,'2022-06-14 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('790bc454-9036-41da-b78d-cc9af5c4c245',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2f83b149-9331-40af-8948-d74ae34a5e3d',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0b9c3f37-aa62-4d0e-86af-01b27b4d25df',0,'2022-06-15 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4387d13b-980a-480e-8ff5-9df3c986d8b7',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('bc2d82da-2d94-4d7a-b311-ca1f2a25ab90',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('3bb5a237-860e-4ac6-ad61-e5b3dc634580',0,'2022-06-16 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('346aa8d5-db74-4ad8-a6bc-79c306985acd',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('24cea91e-0d6a-43f5-807d-d2e66789cba6',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a624f9f3-ac0d-49bc-a5cd-bc24a443961e',0,'2022-06-17 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('20ca8fb9-743f-4af1-a382-5533f82aad2c',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a090f61a-9d94-46f2-99c9-a376018c669f',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('128e5aeb-3465-447f-a084-aa0df04d1e2b',0,'2022-06-20 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a6873d59-fc75-4fec-b997-e3ac4ddc95a2',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('296fddf1-fb68-44e8-8536-b9e8057aed64',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('94f1d4bf-527d-4ec2-bc85-e5b962a7e9d9',0,'2022-06-21 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('cada3e28-da05-4c8b-8195-b3b0d965039b',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1571822c-2049-4d2e-9df9-3681f9c14692',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('85160216-8039-418d-b3f8-45003dc01b02',0,'2022-06-22 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('460b8b78-5456-4eb7-9c8d-9cd7f4a3a90c',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('bccabd56-cabc-4829-abc8-2e28da8c6014',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('98708798-ca1a-4da5-b0f2-3c9022c8e5f9',0,'2022-06-23 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4bc1f7de-ca6a-4fa6-bef5-ac3d04088e2f',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('be7eac41-f146-45d0-8fc6-74309760c659',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('91a5c194-6e7e-4781-b812-76635873587a',0,'2022-06-24 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b287ccbb-bb81-4ced-8df7-329c8af244f1',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('9b83288f-39b9-4cab-b9ac-60b77b864a78',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c923bbe3-2549-4d85-bf51-7e8d8488ea8e',0,'2022-06-27 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('00b318c4-4512-4106-afe4-ce83ce5eb030',0,'2022-06-03 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2a4c156e-fe8e-46cc-8afb-22c70273ba34',0,'2022-06-06 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('47ee70ee-a1a9-4981-b8ac-54d273e46803',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('7fb1239a-c03f-4ecf-94c8-5d63b97acc2d',0,'2022-06-07 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('848ef67a-d3df-40f3-a661-856ddc7ffdde',0,'2022-06-08 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('09cc7f09-5c81-4dda-b987-d618f5ea9a14',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('78d5345d-8cc0-4da7-b9a4-41f3fe2bbee6',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('278526ba-7d0e-4b92-b27c-899b725cdb8f',0,'2022-06-28 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('6ef23037-fa90-4665-9dff-40f13c16813a',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('815582a9-96eb-4282-88bd-6648a4d1ad3f',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('f70c013c-9b62-40f4-b588-37f96bca7924',0,'2022-06-29 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('9aa4fe4c-efbc-4d37-ae56-eda0c227f74b',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b42d4b24-123c-415e-ac5b-34d4227c9b13',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('5aeab824-2b1a-46d4-9573-e9e9bc4e0442',0,'2022-06-30 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3910ef5a-391f-41f0-be46-c982532f2f1e',0,'2022-05-30 16:30:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a8758100-0992-4e72-a6f4-890ebdade850',0,'2022-05-30 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('f3d6b096-01a1-4179-aed2-788daabea1c7',0,'2022-05-30 15:00:00','��. �������� 79/1','�������� ����� ������, ������� ������� ������� � ��������� �����',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('999986a0-da86-4415-a28e-0956a97565fc',0,'2022-05-30 00:00:00','�������+ ������, ��. ���������� �������� 11, �.1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('1117d885-ba1e-4ed5-ab92-a48b778c427e',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2dd8d6a6-9511-46ab-a9ea-6e49a28740dc',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a17e8bf0-bd44-48e5-aa5c-c2154efbcbdd',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('636e2261-92eb-41ea-a520-375c645fd0d6',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f97eb578-41b5-43bc-bf5e-4958196bc98f',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('37801fff-57a8-45ad-9e92-e026e29be0aa',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6c5cde37-8d3f-4815-925f-cb4fe05c7c53',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('04077cb6-98ee-4e3b-94e1-dfa00086aaac',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('05b26026-3c11-49b6-9207-bec891a4611a',0,'2022-06-09 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e796e63e-bd06-4d0e-b17c-c66f9ad1be91',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('920e72f1-4265-4dba-a02f-d0641079aa60',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('f287b685-90be-4dd9-93e3-8db17a3bba7a',0,'2022-06-10 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('cc891854-93f2-4283-a019-055d91988f47',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('eb66bffd-5029-4e6b-8693-f729e3a3e381',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('2ebc2d22-e7d8-48da-8907-ffd906f163bf',0,'2022-06-14 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('dbe82d8f-0e60-4b06-ae7f-7f4bf6f6cfd8',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('53807a97-cc66-4395-8580-f12b9f88afc6',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('6bc3ae28-449f-4954-8aad-52aabbdb64de',0,'2022-06-15 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('95513856-7281-4fa0-8186-88af2b75d416',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5122c34f-ad43-44de-b2b8-72c31399b10d',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('26143f3d-dbc5-4e39-92aa-8f40a41ec147',0,'2022-06-16 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5021b651-4512-4378-9192-6ca3be7a0ca4',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d32f8382-38dc-463d-a82a-06fa778d49d6',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('49b0aad1-3ef9-4028-8be9-6548138e22f7',0,'2022-06-17 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c9092c00-cb90-40d1-8bf0-cea768cd8f5b',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fe04fbe2-714c-4ffb-99f2-f9d0c6766f6f',0,'2022-06-02 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('60ceba82-97f3-44b2-9bdb-9fd19966f4da',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('cfdd974c-e931-4dd4-8304-daab6c66c129',0,'2022-06-03 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('ef812eee-7dba-439e-93a7-3c6c98ecf227',0,'2022-06-06 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7eab38a3-b427-4bdb-b91b-5aedb34e4304',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('5f60d1a9-ed2a-42b3-8918-020b2a092ed5',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c73fcb0a-efcd-406b-8b20-65137ff09f86',0,'2022-06-07 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('9d19562a-bffc-46b9-89f5-cff16d6b6b37',0,'2022-06-08 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('00fa4b83-8ffb-4a5c-82dc-2e05b81faf4d',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('1c63d1b0-3b8e-4629-971d-8cca8352d892',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0bc814bd-ffad-464f-b597-e308b56bbf22',0,'2022-06-20 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('250a5088-4007-4889-bb91-645a2ee0fb06',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('65bc74ee-2902-4aea-9972-18e383a21786',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d134ff9a-0919-43ff-beee-17c12bba7650',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2dbbe72e-b4f4-4e67-bff9-1ea6ecbed29f',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('05177a4f-8b25-4061-b728-21d9e34d4326',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('eff9bdf4-7c88-446e-936c-b2f8e47f5bd8',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1e7d4c6f-c59e-4488-9255-7e9027186d91',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('8d4d755d-e5ca-4295-acf3-aa0daaf757c1',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0e8960b4-a512-4cc0-bcb7-35b1e72e9434',0,'2022-06-09 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3cc70b4f-aef6-43dc-bf7a-3322a933db85',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('8d46903a-2c2e-4f21-a9a7-475a923dcadc',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('6bacd8e5-1ab2-48b6-869b-7032cce050cc',0,'2022-06-10 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('cf8d09f9-8e28-4973-8064-5f040afd855f',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a19a10e3-d3c5-4c4d-be2d-8c6b26a73a17',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('e54d09d9-84fd-4c10-9851-6333ef1feda3',0,'2022-05-31 13:40:00','�������� "������", 
��. ������ ��������, 10','���� UT-542 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b74c1964-6fbb-4c38-9bbb-41295622036f',0,'2022-05-31 00:00:00','��. ����������� 47',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('606eb1c1-4faf-4b86-b6ad-2a5ac551ae43',0,'2022-05-31 15:00:00','��. ��������� - ������� 53',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fbf54467-f069-442a-905e-c9efff85e9f1',0,'2022-05-30 00:00:00','�������� "������", 
��. ������ ��������, 10','����� � 17-05 ���� SU- 1501',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('5a1df3d4-8b4a-41f1-89f5-c392d2c399fc',0,'2022-05-31 16:00:00','������ �������� 33','����� � 18-00, ���� UT-464',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7aa1012b-7f62-43a4-842c-4137838d0c6e',0,'2022-05-30 00:00:00','�������� "������", 
��. ������ ��������, 10','����� � 18-00, ���� UT-464',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a9a9030e-cbd1-4482-95eb-bae29827edf9',0,'2022-05-30 00:00:00','�������� "������", 
��. ������ ��������, 10','����� � 19-55, ���� �� 1507',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('b06556d9-a5cd-4c58-a6d8-b979671fc95b',0,'2022-06-01 08:00:00','�� "������", ��. ����������� 19','���� 5 ����������� ����',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('51b9e58b-5878-49c3-aa0c-656d623b4101',0,'2022-05-25 00:00:00','��. 8 ����� �.2 ����.1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0baa91a5-d3d3-42c3-9317-08145bafb199',0,'2022-06-14 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('35d33988-5698-4443-aed6-b8bcb72442c3',0,'2022-06-01 11:00:00',' (����������� �����, ����� �. �������), ��� �����, ��. ������, �.14',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6e02d395-1aee-4baa-a3cb-9dd9fe690350',0,'2022-06-01 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f9fb9755-38de-4859-bf4e-a5ede6a08704',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('920b5705-3930-4294-9730-899aee99ef91',0,'2022-06-02 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5f666ba6-d16e-4bb0-a70d-5baee04225d1',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('73695f1f-b375-4b30-a4a0-738b3ebc0c06',0,'2022-06-03 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('91186245-566b-41ea-9462-673ee77ff942',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('47821cbe-0f30-4572-9da0-057ed321030a',0,'2022-06-06 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3d4ac54d-a9c5-46f6-b35c-dabdcdb73540',0,'2022-06-07 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3dd82269-d008-49b0-80f6-d1f16c549273',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('1a08d274-5435-4b14-9aee-d6c16617eece',0,'2022-06-08 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a9d1b2fe-e84f-49a4-87ab-98366d7ebcd1',0,'2022-06-06 18:20:00','����������� 112, 3 �������',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('54437a29-6720-4756-8119-fccf1cc4d9bb',0,'2022-05-31 10:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b66ccb6a-341c-488a-b66c-0471039bb0d6',0,'2022-05-31 00:00:00','�����������, 57',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('1be419df-f92f-4826-a137-b05efc9e3ea9',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('9478c95d-43c2-4ee0-b083-dd2eb61fda98',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f247d98b-30e2-42bc-92a4-c34914ec90a2',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b191bebb-0deb-4156-8e88-72703a181f83',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('cbc6fd74-a931-4eb3-9d0f-8adac184b930',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('cc2e418e-7285-4de9-8fc7-c189f8f39508',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('22244435-9349-470d-b574-518216938654',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('0bad179d-a4f5-4d28-831b-48b25aaf2338',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('f94416e7-ed1d-4122-b11e-5150af86181c',0,'2022-06-09 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('36cf79ca-c412-40de-b5ef-afd1ada87815',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('72d89528-2c11-4539-952a-cd71af02e94e',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0b6f8c0f-c0c7-49d8-bd96-5eabce52bbb1',0,'2022-06-10 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('14e9fe78-313b-4d9a-a426-b6062004f371',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1c98e5f9-7b5c-4a78-be8e-e0f721b14805',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('9249ec38-f1bc-422f-bd75-1bd1b86cd1b5',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('85ac2ce1-1b16-4dbe-a89c-6f416e83178e',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('95535820-6709-458c-a257-f0e06c072ae8',0,'2022-06-14 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7c1e80dd-f547-4c16-9237-12d8648f8282',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3f8fa5ce-19dd-4e6e-9c72-cffcdd4005d6',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('5c17263a-b482-446e-9e0f-12fbde41cd57',0,'2022-06-15 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1f2db9f8-0df2-44ba-8829-cf9c0c9685b3',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('9d4696b2-48c5-48eb-8ea8-3ed6f45ed90f',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('63913204-bddb-4a80-a11c-4882cf4b26d9',0,'2022-06-16 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('976e2fc1-c947-4ed6-a95c-2a3b03b35909',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('9cf35f3c-9266-4d8c-b7ca-0b6487d242c2',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('7a3d6d9d-7c10-4c44-910c-899a18eb8e33',0,'2022-06-17 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('aa7e6f9b-5571-4e7d-9369-7c6ea21dda4a',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fbc76528-64cd-401a-ad4a-d19e6b10f1c0',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('cd8e86b3-25f6-4907-b22c-a9d58acefcdd',0,'2022-06-20 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('784f2f1a-55a0-421f-89fe-2672289019a7',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('42e276a2-1051-480b-89dc-a3a89f54a8a6',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('6e5da576-eac5-48b1-beaa-85a88f570a97',0,'2022-06-21 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e86df5be-66eb-43dc-b2a3-a5dfcd583fda',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2e9aae13-d262-4915-96f4-27711659cd82',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('51b717a5-254f-4169-a52d-859c4968b742',0,'2022-06-22 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('8ea7da23-67a1-4815-981e-6dd0427032d7',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('fdbee112-baba-4ef0-be8f-a5f39c0afeb7',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('32e9ac5e-3d06-41fd-bac4-f3944d1728a4',0,'2022-06-23 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('ded0e9aa-83f7-497d-ae40-d7f0ddb6a031',0,'2022-06-02 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c4f2e287-d57b-4c42-a0de-32f2b16b4291',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('f85e79af-572e-4337-8b94-db8da857b167',0,'2022-06-03 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('31f08036-9c81-4b47-952b-80ec0e4a813f',0,'2022-06-06 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('8c5b1f8a-982a-444e-b58d-b48d125de04d',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('58ca40b4-f03e-4481-b5dc-33d5f87f6390',0,'2022-06-07 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3200ee66-db53-43db-a782-9ce136ac0e05',0,'2022-06-08 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('50aa9fec-762f-4007-9a03-88e9b3b31103',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('2b4e582e-529b-430e-ba76-f91e3455c65d',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('bc7ac851-e059-4a49-aecf-7aecbdc4c890',0,'2022-06-24 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('0a952a84-cd79-4d75-bad9-dd2484dc9a7c',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('61579b07-19b1-4971-98fe-71620bee3a17',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ba46b988-e61b-4f67-8417-92511790e0ad',0,'2022-06-27 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5064fe2a-90cf-4e91-80a3-f7ee0d82146c',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('08bc7093-4dc8-47ac-ba9c-533e23f32101',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('97368406-f10b-4677-a5d3-083b1fe1bb49',0,'2022-06-28 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f237fbd3-7e43-4578-aa4f-ec405c78fe1e',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d42107f7-e857-4a2c-8c29-051ea6fc26c4',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('aad1c1fe-4dea-4394-9578-d8449b6eca04',0,'2022-06-29 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('eeda58b6-a5ac-464d-9c5e-d53b3f5ac0a8',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b41de09a-73a3-4f56-a7d2-4d58f029eb55',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('97c95ac0-7ce2-4621-9a78-40373bee836e',0,'2022-06-30 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('498b88ca-9e4a-4b8d-9a00-9e90452ebb4b',0,'2022-07-01 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('961a8f79-d413-452a-916f-17c9487c5526',0,'2022-05-31 00:00:00','�/� ������, ��. �������������, 22','����� ����������� ������ 12:27',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('cb1d4ba7-59a1-4623-aafc-4c40470a98c9',0,'2022-06-01 09:10:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d6d0966d-2157-4a8b-914a-64b21733a55b',0,'2022-05-31 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ca70be3b-cc18-4ea6-a05d-7a0017d72a1e',0,'2022-06-01 11:35:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('83211453-4e92-4c40-830b-e7240b6a4bcb',0,'2022-05-31 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('409eba6f-3fee-4343-9e1a-cfaae878911c',0,'2022-06-01 11:00:00','�� ������� ����������� 17 � 1 4 ���-�',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('050ebd90-e965-455b-b911-1df8b2c0ad06',0,'2022-05-31 00:00:00','�������� "������", 
��. ������ ��������, 10','���� YC-149 ����� � 12-45 ������-��������',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a8f91554-5cea-4265-a033-fdfeed80407f',0,'2022-06-01 11:00:00','�������� "������", 
��. ������ ��������, 10','���� �� 288 �������������-������, ����� �� �. ������������� � 08:50 01.06.2022, �������� � �. ������ � 11:00 01.06.2022',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f2e67a4b-c00e-45e7-ba55-f1252c09ccb0',0,'2022-05-31 00:00:00','��. ���������, 20',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0749bd0d-35d3-4ef8-8697-ba82b4abe272',0,'2022-06-01 11:00:00','�������� "������", 
��. ������ ��������, 10','���� �� 288 �������������-������, ����� �� �. ������������� � 08:50 01.06.2022, �������� � �. ������ � 11:00 01.06.2022',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('60d621b5-1e50-4057-894d-d73d876ccc47',0,'2022-05-31 00:00:00','��. �����������, 63, ����.1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('63dbaa00-b23c-4c6b-aadb-90385c510c9e',0,'2022-06-01 10:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('60c2fe15-3e5b-448a-b629-4936b673c9fa',0,'2022-06-01 00:00:00','��. �������� 79/1','������� ����� ����� 20',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('aaade1a6-9b8d-4768-a6f0-caca35058292',0,'2022-06-01 13:30:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('aae6250c-9c65-43c1-b822-15061a7a046b',0,'2022-06-01 00:00:00','����������� 89� (������� ����������)',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('ccb1f92e-23a8-4707-a4fb-d04b41bd9079',0,'2022-06-01 16:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a2de01d3-de79-45f0-9d15-9f436c21a6e6',0,'2022-06-01 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('4a67af39-041d-4d88-8412-84d004520156',0,'2022-06-01 18:00:00','��. �������� 79/1','+2 ��������� (��������� �.�., �������� �.�.)',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f9483d5e-63dd-4649-a2cd-94b73b3b6744',0,'2022-05-31 00:00:00','�������� "������", 
��. ������ ��������, 10','���� SU 6360 ����� � 19:55 01.06.2022',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('68bf8d09-f196-4f6e-b93c-ff417d732c38',0,'2022-06-01 13:45:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d9561b28-6afa-4f52-b60d-555be6c89632',0,'2022-06-01 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('db645f2e-bb1b-47de-9cba-16cdcc9b64fe',0,'2022-06-01 17:55:00','��. ����������, 41� (�-�� ��� 2)',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5ceb1319-02a5-4ad1-9c32-e98b78a04ea4',0,'2022-06-06 16:30:00','��. ��������� 73 (4-� �������)',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('45025301-e1e5-4a4c-80de-090a35e626c1',0,'2022-05-31 00:00:00','�������� "������", 
��. ������ ��������, 10','���� UT513 ������-����, ����� � 18-30 ',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ebb5519d-4ebd-4543-b7bc-d078ce0db27e',0,'2022-05-31 00:00:00','�������� "������", 
��. ������ ��������, 10','���� ������ - ������ FV 6360, ����� 06.06.2022 � 19:55
',NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('6b0939c0-d3f6-466e-8b8c-f8a046cefaf2',0,'2022-06-11 15:50:00','�������� "������", 
��. ������ ��������, 10','���� UT-514 ����-������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b7155ebe-3bff-4775-8310-7467eb7b2624',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a1bf180f-b5d9-48c3-a2a5-570dc5ddc6bd',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('d4a22e4e-4334-41e1-b45f-a8c84919a140',0,'2022-06-15 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('95ec1f7d-977d-447b-8e27-38d076870394',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5dac4998-6b83-45cb-9f10-2b69fb63c801',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('5c6577f2-a2ed-4e13-8680-ca56d449ea42',0,'2022-06-16 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('45b16b9b-9356-473c-9b5d-e283fa1559a1',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7ec5e97e-91a9-4203-b32a-83d2c55319fa',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('65202978-b327-4e06-9766-747bf2e26745',0,'2022-06-17 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('87c4dbd5-63c9-4d52-8527-7b0a68765f6b',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7c430f66-9608-4324-bfd2-740e40245f7f',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('d80286cf-82d0-497e-a771-14fda920786d',0,'2022-06-20 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3ac11063-c135-48d5-9a07-aff2379e1a15',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3a4a6f02-f90c-49e9-b3e9-9c463990ed69',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('8fd1db84-4f3e-4679-9d99-d06658a666fd',0,'2022-06-21 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('af227a48-9ffd-42d6-afb2-080f869c9b05',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c76e0c16-69ca-4d88-8d77-4ebbcd3da6b3',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('81678dda-3339-4c8b-b8b1-4256a06b3acb',0,'2022-06-22 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5d9b2fa6-5223-4d5e-ba02-25e8c0ac55ee',0,'2022-06-15 03:15:00','�. ������, ��. ����� ������, �.4, ��.114',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('51e0bd2b-972b-40d7-9bec-f850f74b083a',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2560b3cf-9e28-4883-b5a8-213989ae8ff5',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a38e0de1-d297-455a-8215-fd0e779d5a3b',0,'2022-06-23 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6cf47c6f-919c-430e-bc9e-47a1fb48a6b1',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('293da50b-a4a8-4e9e-a63d-57b2d0b60862',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('cb6efb5e-1b2e-49b1-b128-610d6232f8b8',0,'2022-06-24 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('57190097-35b8-425f-a0ab-d6e3ba737114',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e1cf8e20-e369-4910-823d-2e0aadc25c5f',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('4d2173d1-ebe0-4857-9170-c9ff10e86967',0,'2022-06-27 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f816152a-3716-45b1-ad12-bf564ce80cb7',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('0414a6ff-8a8b-4cf2-bb54-e80e6f788479',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('6296c732-6b63-4b90-84e2-cbb7ed767835',0,'2022-06-28 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('630b0155-af38-4ca2-887f-8492e0e54b33',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e49633c8-0884-4758-9548-c44e8f24f1b7',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('bcd3ff2a-cf87-444f-98de-cde4954b2e18',0,'2022-06-29 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fd511cef-45ab-48ab-97c9-8bcf6c213512',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b2442e19-478e-4d3e-adf3-51f1278ba10a',0,'2022-06-01 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('2d14f809-2e72-49bb-87b3-29464092f0a8',0,'2022-06-30 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e7534e05-78d3-41eb-bfe9-9b68691b5379',0,'2022-06-01 00:00:00','�������� "������", 
��. ������ ��������, 10','������ � ���, 
���� � SU-1503 + 5N225
����� ������ - 15.06.2022 � 05:25
',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('71058bf8-601f-4ced-a035-833a07798c22',0,'2022-06-01 11:00:00','��. �������� 79/1','�������� ����� ������',NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('90ce84e8-a2a3-4d1d-a4b1-e1119a57b4c2',0,'2022-06-01 00:00:00','��. ������������ 5',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('d04ed599-b876-4d54-a172-c81051fd7d21',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('6d44ebcc-ceaa-42d1-a442-21c2637e37bb',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('9cf33430-27f5-48f7-adbe-b5601f78b578',0,'2022-06-04 14:50:00','�������� "������", 
��. ������ ��������, 10','���� S7 5351 �����������-������, ����� �� �. ����������� � 14.45 04.06.2022, �������� � �. ������ � 14.50 04.06.2022',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7c870569-85db-415d-8bba-18528ff5c14b',0,'2022-06-02 09:15:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4526b8f8-1c24-4cb6-98ad-9abb9f85fc4c',0,'2022-06-02 11:45:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('437ef7c9-987d-4877-bffd-85fe0f5fc465',0,'2022-06-01 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('2dcf1349-a277-4895-bcd5-8071d9d449cc',0,'2022-06-01 16:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('85ad796a-f2a4-475a-9485-a2c698dc980b',0,'2022-06-01 00:00:00','�����������, 57',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('6b30fb87-5747-4990-9aef-633c560ea69f',0,'2022-05-31 00:00:00','�������� "������", 
��. ������ ��������, 10','����� 19-55 ���� SU-6360',NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('79702f53-50d3-45bc-9782-1ab6fac574ef',0,'2022-06-01 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ba0c6f54-59cb-44cc-adfc-cf33a18be042',0,'2022-06-02 16:00:00','������',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('25a6ceca-d224-49eb-866b-79b2610ce203',0,'2022-06-02 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c8628a41-8259-4e91-a0e7-7eee783ed497',0,'2022-06-03 09:15:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b588dfd4-2e14-43c0-b9b0-8c05bbaf92ee',0,'2022-06-02 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('d0c383bb-8321-4e3f-a5b3-331660a5fea4',0,'2022-06-03 11:40:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5806083b-1923-477f-abcc-c0e1c6a92da6',0,'2022-06-02 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('9f4fa540-2db4-4cf6-8d01-c23090e25c40',0,'2022-06-03 18:10:00','�������� "������", 
��. ������ ��������, 10','���� YC 146 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3c23d968-68c0-4297-b7dc-ca8fd2c87af9',0,'2022-06-01 00:00:00','��. ��������� 71 ����.3',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('7d39dff3-988b-461a-9ca6-fc34781fc1f4',0,'2022-06-03 18:10:00','�������� "������", 
��. ������ ��������, 10','���� YC 146 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('5bac9cf8-8a56-4c68-81c8-90603997da2f',0,'2022-06-01 00:00:00','��. �������� 4',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('9d3747c9-e7b1-4b01-904d-2859fb94e2cc',0,'2022-06-03 09:00:00','��. ������� ��������,42','���',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b8a456d1-e002-45a7-94e4-dc5ce6c0e048',0,'2022-06-03 00:00:00','��. 30 ��� ������,79','���������',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('f3edeead-dfca-45f7-8dd5-e5d44d61645d',0,'2022-06-01 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('571ff829-6d85-4199-bf4e-47d7c6908438',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0fdb4168-4207-4d58-a958-47ca1ef95c08',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('7eb3621b-086a-488b-9cb8-0b49ff856337',0,'2022-06-01 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('ca5c25aa-9182-41e8-9933-7c5153010a37',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('aab217c3-8878-4bc7-9590-12ce87defc80',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('cb99f124-eb80-4346-bf32-c32c71cb9151',0,'2022-06-01 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('11520bb9-fda9-4f41-970e-3d989e9a3c1e',0,'2022-05-23 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('e173e8b4-7c99-499c-9774-12b57065b115',0,'2022-05-23 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('495ed057-4803-41de-8d54-9ac42fab2d1e',0,'2022-06-02 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('926736ec-95c0-455e-b53a-92f08b8f97af',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('dd907cd0-49a6-4a26-8826-cac1876f7161',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0c078b0c-8a69-45cb-9b86-ef6c77c18379',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0c8da1a0-10af-4871-9e68-98ddcce2b1ca',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a66ecf59-6025-4591-820d-d114e791dc06',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('65303da8-815f-4ba1-8e6e-876c351fab1b',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('20257beb-ef79-474c-8093-419703f8e1f5',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('7ec1fd4b-895c-42d9-affb-945d29ae0611',0,'2022-05-30 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('b99f73c2-4d42-42df-b33a-fd31c691a27f',0,'2022-05-31 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('4f7ea318-a1b3-43fe-ab04-7460d6cb9c4a',0,'2022-05-23 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('30c8cfbe-31e8-4926-9e1e-81dfd4e711cf',0,'2022-05-23 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0588d440-1669-443f-bb22-7c5db1f84f1e',0,'2022-06-03 13:35:00','�������� "������", 
��. ������ ��������, 10','���� UT542, ����� �������-������, ����� ������� 13-35',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fb44a31a-82a5-4207-b0b1-fcf2d21f4678',0,'2022-06-03 00:00:00','��. ������� �����������, �. 17, �. 1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0f0a993a-cffa-4b44-ac49-b91b9a944ffe',0,'2022-06-03 00:00:00','���, ��. ������� ��������, 42',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d64508ae-ec6f-43bc-a3c7-a71f898d7f87',0,'2022-06-03 14:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4fe5a611-138e-4187-813c-1aa1f9021172',0,'2022-06-03 00:00:00','��. ���������� �������� 11/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('5dbe884b-7e95-4074-8438-b53f957fb289',0,'2022-06-06 09:00:00','��. ������� ��������,42','���',NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('95d4d2b1-882e-43b8-9af5-4425dd377417',0,'2022-06-03 00:00:00','��. ��������,5','�����',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('46cdc30c-35d0-4053-82cd-70d2cd165eb8',0,'2022-06-06 09:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f25bf8d6-d522-4dc6-994e-41445ba2ec5e',0,'2022-06-03 00:00:00','��. ������������ 5',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a0bea9b9-3b02-4cf6-8b6d-952d59a6b328',0,'2022-06-06 09:30:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('953e75f7-321e-4f78-86f9-beba9086f168',0,'2022-06-06 00:00:00','�� �������������, 1 ���� 3, �� ����������,143�',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('44fb550d-1337-42ce-8dd7-4a16c5a5e555',0,'2022-06-06 16:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fb2ab9bc-c206-4b63-b55a-288a95e02850',0,'2022-06-06 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ebb4fca3-a852-467a-8fda-0cd59e777d71',0,'2022-06-06 14:15:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('df749db5-edfc-4ea3-80d1-a44a84b051f6',0,'2022-06-06 00:00:00','����������������,70',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('55502ffb-2ff2-4878-bdb8-5ec06568b397',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('ba52fad5-0cf8-4c2f-a4b0-d5f1267ca2d0',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('eaed1a57-f8de-4d1c-a5bc-800011939c1d',0,'2022-06-20 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('69b42b5e-8186-432b-a45f-bbcf0840fa02',0,'2022-06-08 17:55:00','��. ��������, ���. 136, ������ 5',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1048fdc9-b607-4104-b471-1e5bf728925d',0,'2022-06-03 00:00:00','�������� "������", 
��. ������ ��������, 10','������-������ 08.06.2022 19:55 FV 6360',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c89e8f92-d194-4bb7-961a-fbebb8c664de',0,'2022-06-08 18:10:00','�������� "������", 
��. ������ ��������, 10','����� ������� ������� 08.06.2022 YC4110 18:10',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('706d576d-ffbe-4b42-8a96-837cbe2e019c',0,'2022-06-03 00:00:00','��. ����������������, �. 5',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('dc935a81-01c7-4739-bd73-d80c877216db',0,'2022-06-08 18:10:00','�������� "������", 
��. ������ ��������, 10','����� ������� ������� 08.06.2022 YC4110 18:10',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7414fb41-5614-46f1-8992-a10136d2156b',0,'2022-06-08 18:10:00','�������� "������", 
��. ������ ��������, 10','����� ������� ������� 08.06.2022 YC4110 18:10',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6959d194-751d-4db8-8dec-6780a81ef68d',0,'2022-06-03 00:00:00','��. ����������� 65�',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('7d7f81f9-6ca5-4267-aad3-89a901175cd6',0,'2022-06-08 17:30:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('4da3b4f7-9a32-4738-a8f0-5da34420d2e9',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('517bb76d-cd23-4ff3-8ed6-14ab0f178215',0,'2022-06-21 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2431492c-0e2d-4e0a-8dac-d560a385b47c',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c058f879-578e-4cff-a70e-517b4eb53e86',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('82a43982-cfbf-4628-a466-1e5d0a24aaac',0,'2022-06-22 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('07a8cb91-dead-4e42-8609-e8f1fa5e5954',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('ee398184-0686-4c14-88f4-41f85dad8f7b',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0f641f85-2f6e-4961-8db4-c13fb23a5c3a',0,'2022-06-23 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('14252023-0436-403e-b2db-7319fd7a70af',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2042dd26-b8ad-406a-a333-7956a979313e',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('921a1132-2a64-4855-a2be-3f6c24a08129',0,'2022-06-24 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6c951903-2384-47c9-9eed-4ac604525283',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1117ce53-b23d-4587-a69e-e7d560b42530',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('eec7dcf9-982b-44e0-9644-4ecda19ca168',0,'2022-06-27 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('d4f8a59b-7c15-483f-b3a8-64e1f9fdb0b0',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c5fc0d33-cbf8-440c-a1fb-223f29ed20b7',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('b76c994f-6197-4839-b428-7ed08a581238',0,'2022-06-28 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('06020c5d-6dff-4950-9de4-317de19e7697',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('807c26c4-f385-49a8-a51e-d0d4def9746d',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('cfc36d5d-9021-449e-a426-a400a4262b80',0,'2022-06-29 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('b52d55b0-4dc1-4257-82c9-e12ec6cc9466',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('7caf4eb3-d78f-411e-ab7f-98dc7da58078',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('8e67f941-d4e6-49f1-a80b-6254efb59bde',0,'2022-06-30 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('89cd1b1c-371b-4d72-83e9-1f4a3ab8d327',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6946459f-f9d4-4b92-a5f8-0f52f04bc94b',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('8386df78-87d8-4227-aa7f-27e8c9e73cea',0,'2022-07-01 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('97d4fdc9-8ac9-493d-948a-1c9db3cd666f',0,'2022-06-06 16:30:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4f0d17b0-0720-48fd-be1e-d0c659a7938d',0,'2022-06-06 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('9245fad5-09f7-4ef0-9c07-fe482eb7916f',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('175ce668-6ab3-4ef6-a122-7f86ac1cf062',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('c1419fdf-5142-44d2-a779-3de6abfaf053',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('41e73858-d5c5-4bae-a88f-4968c54bffa2',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3e6dd782-5b74-4a0c-bac8-1b12dc963933',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c45397b2-1870-472a-b7e6-dac101bcd4d2',0,'2022-06-02 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('823a801b-e682-4647-950d-6cf50b721b3c',0,'2022-06-03 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('0bb89461-566d-41fd-81ae-4a2a149b0d27',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('31c9212b-8265-480e-979b-7b2317cdde71',0,'2022-06-06 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('30e61986-b085-4415-a304-98db06004660',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('5cd768ab-3947-4a1f-9e99-0a8b135d2d9d',0,'2022-06-08 13:30:00','��. ������ 2�,, ��������� ��������',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('c98b1fc4-0230-43fe-9b1e-db6d2fb29795',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('ec5edea6-5dfa-4968-b7cb-36aca1f3c2ac',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('86bf09fa-ee10-4479-950b-bb35f07653f5',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('8a1d7ceb-6cf3-4b02-b634-394ece86f146',0,'2022-06-09 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('319fafce-53f3-497a-bb86-c2985414a528',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fb8bd5e6-7ca3-49e1-9936-d968792df5a8',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('ecc708f1-bfd4-4e6e-b782-2997d48d0c14',0,'2022-06-10 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('79b617bf-1b47-4292-bc04-91060fce8561',0,'2022-06-01 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('8364913d-ae6e-45f4-a142-5ad6fae91685',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('193d775a-4ba1-41fc-a645-0388d8b6328d',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('b2196e19-a2de-4b3c-a361-c27fbb89c8a1',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('92d9072e-b4d8-4a9b-843c-45ce63295e4f',0,'2022-06-07 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4253fa3e-4f65-49bc-84de-71a5e939463c',0,'2022-06-08 08:00:00','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('f5798cf2-ae0f-4681-93fe-32cebb234b08',0,'2022-06-06 00:00:00','',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('06ae94c7-8e15-4a8c-8b8b-21169fc8153d',0,'2022-06-07 09:15:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('69250780-99be-4ba1-b336-876be94f9a83',0,'2022-06-06 00:00:00','����������������, 70, �� �������������, 1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('4c1fba05-245a-466d-90ae-0a98bf57dd9e',0,'2022-06-21 13:30:00','��. ���������, 71, ����.3',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fd74aebc-7fa1-4aea-8c92-7243206a7864',0,'2022-06-07 00:00:00','�������� "������", 
��. ������ ��������, 10','���� S7 5352 ������-�����������, ����� � 15:40 21.06.2022',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c312921d-4545-4b13-be1a-c01b55672338',0,'2022-06-26 14:50:00','�������� "������", 
��. ������ ��������, 10','���� S7 5351 �����������-������, ����� �� �. ����������� � 14.45 26.06.2022, �������� � �. ������ � 14.50 26.06.2022',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('3e217f5e-5f1b-449c-8028-7c776cc40e93',0,'2022-06-07 00:00:00','��. ���������, 71, ����.3',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('d5b18a68-ba4c-4ab6-b022-645101763a59',0,'2022-06-26 14:50:00','�������� "������", 
��. ������ ��������, 10','���� S7 5351 �����������-������, ����� �� �. ����������� � 14.45 26.06.2022, �������� � �. ������ � 14.50 26.06.2022',NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('a5de63a5-1d38-43c6-acbc-b0b68d1fc2dc',0,'2022-06-07 00:00:00','��. ����������� 63 �1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('0151d2b0-46ca-4da8-8426-96c237c31aa7',0,'2022-06-06 00:00:00','�������� "������", 
��. ������ ��������, 10','���� S7 5352, ����� 15-40',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('5ddceed9-0c4a-4123-adcf-bba255ea7634',0,'2022-06-08 13:30:00','��. ������ 2�,, ��������� ��������',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('215103ae-0818-49c3-98b6-d3b89ddb5f5f',0,'2022-06-06 00:00:00','�������� "������", 
��. ������ ��������, 10','S7 5352, ����� ������ 15-40',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('15882a16-2841-4bce-bcf1-0cf461a22f71',0,'2022-06-08 13:30:00','��. ������ 2�,, ��������� ��������',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a3f020e3-f1f3-4374-be93-26addee24560',0,'2022-06-06 00:00:00','�������� "������", 
��. ������ ��������, 10','S7, 5352, ����� ������ 15-40',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('bbba979b-59c0-4f1a-b42a-3f787026abb5',0,'2022-06-07 10:40:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5491aa4f-2bd8-4d4c-a557-000aaeffd1cd',0,'2022-06-07 00:00:00','��. ���������, 99� (������������ ����)',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('74fb39b6-8b0a-4429-9806-294b6f8e1a11',0,'2022-06-07 14:00:00','��. ������������ 5',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('67c571f9-59f1-4eb7-a8b9-b1813dd62f52',0,'2022-06-07 00:00:00','���������, 10 (������������)',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('ed2993de-d483-4f29-b815-1034a401daf1',0,'2022-06-03 00:00:00','�������� "������", 
��. ������ ��������, 10','������-������ 08.06.2022 19:55 FV 6360',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('97c5fff1-cbbd-43ca-92bf-ab9dbee16385',0,'2022-06-08 17:55:00','��. �����������, 29',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4c111bbf-334e-42db-9dcb-ab50b1841fe7',0,'2022-06-03 00:00:00','�������� "������", 
��. ������ ��������, 10','������-������ 08.06.2022 19:55 FV 6360',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('66658538-18b4-4414-8547-c89060502aa5',0,'2022-06-03 00:00:00','��. ��������� 84 �.3. ',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('cf0438d2-f348-4140-ab5f-ac6c5b825304',0,'2022-06-07 16:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('ae4b07bd-a516-4065-97df-e7c4bc227f47',0,'2022-06-07 00:00:00','��������� ��������',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('84cb4600-8809-41a6-8de0-082ce44ecd16',0,'2022-06-08 09:15:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('2f0d4f7d-51ce-40ee-b1f7-9eac743048cd',0,'2022-06-08 00:00:00','��. ����������, 143�',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('32528bd0-3dc8-4e83-a2d5-9a2bd052be76',0,'2022-06-08 14:30:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('4703c0f2-afcb-4a6d-8130-a457a86e0a01',0,'2022-06-08 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('13e5e903-6fa7-42dc-a543-9fb7ead2f7da',0,'2022-06-08 14:30:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('32fca000-5737-4080-bd71-9da85bc10e87',0,'2022-06-08 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('de1592dc-05d5-45bd-92d0-b45822f04d79',0,'2022-06-08 14:30:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('cb51504e-7bc6-4d7d-9745-280430426e1a',0,'2022-06-08 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('bea6eeeb-f02e-4e93-b7a4-3a28816f1f7b',0,'2022-06-09 18:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('b3a6c22d-1aeb-4f9f-89f9-ec0541795637',0,'2022-06-09 11:45:00','��. �����������, 58',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('52113b5c-f7a2-4d27-b1a8-7b64b5def219',0,'2022-06-08 00:00:00','�/� ������, ��. �������������, 22','����������� ������ � 12:27',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('c36d81c0-6f24-4f5b-9ba7-127ffac249d7',0,'2022-06-09 13:35:00','�������� "������", 
��. ������ ��������, 10','���� UT 542 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('5d27d183-9d9b-45fe-8618-5b7ec0398f5b',0,'2022-06-07 00:00:00','��. �������� 4 (�-�� ��������)',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('7feb4a1e-cf57-4cac-9a51-d569235ab2c7',0,'2022-06-08 00:00:00','�������� "������", 
��. ������ ��������, 10','����� � 19-55, ���� SU 6360',NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('8790b0ea-e01f-4f39-b374-5ff59bab437d',0,'2022-06-09 16:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6501ed3f-10f8-4a98-bac5-c1da0abfb602',0,'2022-06-09 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('e59b4e87-52c4-472a-93d4-acca282ec130',0,'2022-06-09 16:20:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('6a3fdc03-9cb0-45f6-823c-8351f7eae322',0,'2022-06-09 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('e9c2fed4-7740-46c7-baba-b025de5200e0',0,'2022-06-09 00:00:00','��. ������������ 5',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('1ffd9fd2-298e-4679-8ce9-0065711253dc',0,'2022-06-09 00:00:00','��������� ��� 61','����������� ���������������� � �������� ��������� �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('fa1d803b-ce20-4a0c-96bc-4358fb0b2280',0,'2022-06-10 10:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('e5b0c6c1-af9a-43f3-8144-973fd0d01219',0,'2022-06-10 18:10:00','�������� "������", 
��. ������ ��������, 10','���� YC 146 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('bb3c691c-18ac-48c7-949b-b174cb277109',0,'2022-06-09 00:00:00','��. ������� 25',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('025f51a8-9e8a-41eb-8d82-190afaaaf6d7',0,'2022-06-09 16:30:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('edd12396-09a2-4cec-955d-6b67cefc0293',0,'2022-06-09 00:00:00','���������� 1�',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a9a258b8-30fb-42f3-991f-a2df01958d27',0,'2022-06-10 09:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('cdec0d88-c273-4642-96b1-a60e325efac2',0,'2022-06-09 00:00:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('4e5ad006-2141-4d72-863c-78d44cf624dd',0,'2022-06-09 00:00:00','������������ ��� 20','������������� �. ������',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('fcfa0e08-63ab-4495-bf0f-67b5bfd09f52',0,'2022-06-10 18:10:00','�������� "������", 
��. ������ ��������, 10','���� YC 146 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('69a6b6a3-5d26-46b8-98f4-d3bcdc1fb5e6',0,'2022-06-09 00:00:00','��. ���� 57',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('628fc07a-01ee-4e5f-81f6-07c18b2d0c58',0,'2022-06-10 12:40:00','�� "������", ��. ����������� 19',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('27558c57-0034-450d-bc80-a3bdc78c27b6',0,'2022-06-10 00:00:00','��. �������� 79/1','������� ����� ����� ����� 40.
���� �����, ��� ������� � �������� �������, ����� ������ ��������?',NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('7570a45c-44c0-48f6-bad2-e13e3ce33608',0,'2022-06-10 13:35:00','�������� "������", 
��. ������ ��������, 10','���� UT 542 �� ������ �������',NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('cddbbd41-de94-4516-9e52-ed999e5b6575',0,'2022-06-09 00:00:00','��. �������������� 14',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);
INSERT INTO public."Waypoint" ("Oid","Order","UserTime","Destination","Comment","DriverShift","State","ObjectType","Owner","OrderType","WaypoinType",passenger) VALUES
	 ('2c3cb8ad-a7c5-4c10-95d4-922248fd9448',0,'2022-06-10 15:15:00','���������� 252',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('a94849a1-8873-4374-99d8-384cc1e0cfb8',0,'2022-06-10 00:00:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('a95f04ad-fd96-43fb-8a6c-37095c55833d',0,'2022-05-31 00:00:00','��. ���������, 73 (4-� �������)',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL),
	 ('3e061972-a51d-4d04-a302-7604b164964f',0,'2022-06-10 14:15:00','��. �������� 79/1',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),
	 ('ee555fb1-a02d-478b-b490-c3a15d089cdf',0,'2022-06-10 00:00:00','���������� �������� 11, �.1 (������� +)',NULL,NULL,NULL,NULL,NULL,2,NULL,NULL);

