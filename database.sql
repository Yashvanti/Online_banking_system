SELECT * FROM online_banking_system.admin_signup;
use online_banking_system;
create table forgot_pass02
(
	OTP bigint(6),
    npass nvarchar(45),
    cpass nvarchar(45)
);

create table new_acc
(   
    id int auto_increment primary key,
	user_id int,
    firstname nvarchar(45),
    lastname nvarchar(45),
    address nvarchar(45),
    city nvarchar(50),
    birthdate date,
    phno nvarchar(50),
    adharcard bigint,
    gender nvarchar(45),
    email nvarchar(45),
    image nvarchar(200),
    signature nvarchar(200),
    accounttype nvarchar(45),
    amount bigint,
    account_number bigint
);

create table cheque_form
(
	id int auto_increment primary key,
    user_id int,
    accountno bigint(10),
    accounttype nvarchar(45),
    signature nvarchar(200),
    status nvarchar(45)
);


create table admin_signup
(
	admin_id int auto_increment primary key,
    name nvarchar(45),
    phno bigint(10),
    email nvarchar(45),
    adminname nvarchar(45),
    password nvarchar(45),
    repassword nvarchar(45)
);

create table user_signup
(
	user_id int auto_increment primary key,
    full_name nvarchar(45),
    phno bigint(10),
    email nvarchar(45),
    username nvarchar(45),
    password nvarchar(45),
    repassword nvarchar(45)
);

create table balance_form
(
	user_id int primary key,
    accountno bigint(10),
    usernm nvarchar(45),
    password nvarchar(45),
    balance bigint(10)
);

create table request_atm
(
	id int auto_increment primary key,
    name nvarchar(45),
    address nvarchar(45),
    pincode bigint(10),
    city nvarchar(45),
    state nvarchar(45),
    mono bigint(10),
    email nvarchar(45),
    accounttype nvarchar(45),
    gender nvarchar(45),
    birthdate date,
    accountno bigint(10),
    place nvarchar(45),
    date date,
    signature nvarchar(200),
    user_id int,
    status nvarchar(50)
    
);
create table transfer_money
(
	user_id int primary key,
    accountno bigint(10),
    usernm nvarchar(45),
    password nvarchar(45),
    toaccount bigint(10),
    amount bigint(10)
);

create table loan
(
	id int auto_increment primary key,
    firstname nvarchar(45),
    lastname nvarchar(45),
    email nvarchar(45),
    city nvarchar(45),
    branchcode bigint(10),
    phno bigint(10),
    adharcard bigint(10),
    loanamount bigint(10),
    timeperiod time,
    loantype nvarchar(45),
    fromdate date,
    todate date,
    time time,
     user_id int,
     status nvarchar(50)
);

create table online_statement
(
	id int auto_increment primary key,
    user_id bigint,
    Date date,
    TransactionType nvarchar(45),
    DebitAmount nvarchar(45),
    CreditAmount nvarchar(45),
    Balance nvarchar(45),
    Accountno nvarchar(45)
);

create table withdraw_form
(
	Account_No bigint(50),
    User_Name nvarchar(50),
    password nvarchar(50),
    Amount bigint(50)
);
create table deposite
(
	Account_no bigint(50),
    User_Name nvarchar(50),admin_signup
    Password nvarchar(50),
    Amount bigint(50)
);
create table withdraw_form
(
accno bigint,
uname nvarchar(100),
pass nvarchar(50),
amt bigint

);
desc balance_form;
desc user_signup;
desc loan;
desc cheque_form;
desc deposite;
desc new_acc;
desc online_statement;
desc request_atm;
desc transfer_money;
desc withdraw_form;