unit Udmysql;
(*
 This Unit was created by Reiner Sombrowsky (somby@lycosmail.com)
 You can uses it without warrenty. Please tell me if you have founded some
 errors.
 All corresponding record-types are beginning with T.. and all
 pointer to the records are beginning with P..

 This DELPHI4/5 - unit supports the latest
 Version of libmysql.dll (Version 03.23.14) of MySQL.
 You can also use it for libmysql.dll- Version 03.22.xx,
 if you change the next DEFINE - statement as comment
 {.DEFINE VER0323XX}
*)
{$A+}
{$DEFINE VER0323XX}

interface
uses windows,winsock;
const
 MYSQL_ERRMSG_SIZE                 =200;

 CR_MIN_ERROR		           =2000; // For easier client code
 CR_MAX_ERROR		           =2999;
 CLIENT_ERRMAP                     =2;    // Errormap used by my_error()
 CR_UNKNOWN_ERROR	           =2000;
 CR_SOCKET_CREATE_ERROR	           =2001;
 CR_CONNECTION_ERROR	           =2002;
 CR_CONN_HOST_ERROR	           =2003;
 CR_IPSOCK_ERROR	           =2004;
 CR_UNKNOWN_HOST	           =2005;
 CR_SERVER_GONE_ERROR	           =2006;
 CR_VERSION_ERROR	           =2007;
 CR_OUT_OF_MEMORY                  =2008;
 CR_WRONG_HOST_INFO                =2009;
 CR_LOCALHOST_CONNECTION           =2010;
 CR_TCP_CONNECTION	           =2011;
 CR_SERVER_HANDSHAKE_ERR           =2012;
 CR_SERVER_LOST		           =2013;
 CR_COMMANDS_OUT_OF_SYNC           =2014;
 CR_NAMEDPIPE_CONNECTION           =2015;
 CR_NAMEDPIPEWAIT_ERROR            =2016;
 CR_NAMEDPIPEOPEN_ERROR            =2017;
 CR_NAMEDPIPESETSTATE_ERROR        =2018;
{$IFDEF VER0323XX}
 CR_CANT_READ_CHARSET              =2019;
{$ENDIF}

 ER_HASHCHK                        =1000;
 ER_NISAMCHK                       =1001;
 ER_NO                             =1002;
 ER_YES                            =1003;
 ER_CANT_CREATE_FILE               =1004;
 ER_CANT_CREATE_TABLE              =1005;
 ER_CANT_CREATE_DB                 =1006;
 ER_DB_CREATE_EXISTS               =1007;
 ER_DB_DROP_EXISTS                 =1008;
 ER_DB_DROP_DELETE                 =1009;
 ER_DB_DROP_RMDIR                  =1010;
 ER_CANT_DELETE_FILE               =1011;
 ER_CANT_FIND_SYSTEM_REC           =1012;
 ER_CANT_GET_STAT                  =1013;
 ER_CANT_GET_WD                    =1014;
 ER_CANT_LOCK                      =1015;
 ER_CANT_OPEN_FILE                 =1016;
 ER_FILE_NOT_FOUND                 =1017;
 ER_CANT_READ_DIR                  =1018;
 ER_CANT_SET_WD                    =1019;
 ER_CHECKREAD                      =1020;
 ER_DISK_FULL                      =1021;
 ER_DUP_KEY                        =1022;
 ER_ERROR_ON_CLOSE                 =1023;
 ER_ERROR_ON_READ                  =1024;
 ER_ERROR_ON_RENAME                =1025;
 ER_ERROR_ON_WRITE                 =1026;
 ER_FILE_USED                      =1027;
 ER_FILSORT_ABORT                  =1028;
 ER_FORM_NOT_FOUND                 =1029;
 ER_GET_ERRNO                      =1030;
 ER_ILLEGAL_HA                     =1031;
 ER_KEY_NOT_FOUND                  =1032;
 ER_NOT_FORM_FILE                  =1033;
 ER_NOT_KEYFILE                    =1034;
 ER_OLD_KEYFILE                    =1035;
 ER_OPEN_AS_READONLY               =1036;
 ER_OUTOFMEMORY                    =1037;
 ER_OUT_OF_SORTMEMORY              =1038;
 ER_UNEXPECTED_EOF                 =1039;
 ER_CON_COUNT_ERROR                =1040;
 ER_OUT_OF_RESOURCES               =1041;
 ER_BAD_HOST_ERROR                 =1042;
 ER_HANDSHAKE_ERROR                =1043;
 ER_DBACCESS_DENIED_ERROR          =1044;
 ER_ACCESS_DENIED_ERROR            =1045;
 ER_NO_DB_ERROR                    =1046;
 ER_UNKNOWN_COM_ERROR              =1047;
 ER_BAD_NULL_ERROR                 =1048;
 ER_BAD_DB_ERROR                   =1049;
 ER_TABLE_EXISTS_ERROR             =1050;
 ER_BAD_TABLE_ERROR                =1051;
 ER_NON_UNIQ_ERROR                 =1052;
 ER_SERVER_SHUTDOWN                =1053;
 ER_BAD_FIELD_ERROR                =1054;
 ER_WRONG_FIELD_WITH_GROUP         =1055;
 ER_WRONG_GROUP_FIELD              =1056;
 ER_WRONG_SUM_SELECT               =1057;
 ER_WRONG_VALUE_COUNT              =1058;
 ER_TOO_LONG_IDENT                 =1059;
 ER_DUP_FIELDNAME                  =1060;
 ER_DUP_KEYNAME                    =1061;
 ER_DUP_ENTRY                      =1062;
 ER_WRONG_FIELD_SPEC               =1063;
 ER_PARSE_ERROR                    =1064;
 ER_EMPTY_QUERY                    =1065;
 ER_NONUNIQ_TABLE                  =1066;
 ER_INVALID_DEFAULT                =1067;
 ER_MULTIPLE_PRI_KEY               =1068;
 ER_TOO_MANY_KEYS                  =1069;
 ER_TOO_MANY_KEY_PARTS             =1070;
 ER_TOO_LONG_KEY                   =1071;
 ER_KEY_COLUMN_DOES_NOT_EXITS      =1072;
 ER_BLOB_USED_AS_KEY               =1073;
 ER_TOO_BIG_FIELDLENGTH            =1074;
 ER_WRONG_AUTO_KEY                 =1075;
 ER_READY                          =1076;
 ER_NORMAL_SHUTDOWN                =1077;
 ER_GOT_SIGNAL                     =1078;
 ER_SHUTDOWN_COMPLETE              =1079;
 ER_FORCING_CLOSE                  =1080;
 ER_IPSOCK_ERROR                   =1081;
 ER_NO_SUCH_INDEX                  =1082;
 ER_WRONG_FIELD_TERMINATORS        =1083;
 ER_BLOBS_AND_NO_TERMINATED        =1084;
 ER_TEXTFILE_NOT_READABLE          =1085;
 ER_FILE_EXISTS_ERROR              =1086;
 ER_LOAD_INFO                      =1087;
 ER_ALTER_INFO                     =1088;
 ER_WRONG_SUB_KEY                  =1089;
 ER_CANT_REMOVE_ALL_FIELDS         =1090;
 ER_CANT_DROP_FIELD_OR_KEY         =1091;
 ER_INSERT_INFO                    =1092;
 ER_INSERT_TABLE_USED              =1093;
 ER_NO_SUCH_THREAD                 =1094;
 ER_KILL_DENIED_ERROR              =1095;
 ER_NO_TABLES_USED                 =1096;
 ER_TOO_BIG_SET                    =1097;
 ER_NO_UNIQUE_LOGFILE              =1098;
 ER_TABLE_NOT_LOCKED_FOR_WRITE     =1099;
 ER_TABLE_NOT_LOCKED               =1100;
 ER_BLOB_CANT_HAVE_DEFAULT         =1101;
 ER_WRONG_DB_NAME                  =1102;
 ER_WRONG_TABLE_NAME               =1103;
 ER_TOO_BIG_SELECT                 =1104;
 ER_UNKNOWN_ERROR                  =1105;
 ER_UNKNOWN_PROCEDURE              =1106;
 ER_WRONG_PARAMCOUNT_TO_PROCEDURE  =1107;
 ER_WRONG_PARAMETERS_TO_PROCEDURE  =1108;
 ER_UNKNOWN_TABLE                  =1109;
 ER_FIELD_SPECIFIED_TWICE          =1110;
 ER_INVALID_GROUP_FUNC_USE         =1111;
 ER_UNSUPPORTED_EXTENSION          =1112;
 ER_TABLE_MUST_HAVE_COLUMNS        =1113;
 ER_RECORD_FILE_FULL               =1114;
 ER_UNKNOWN_CHARACTER_SET          =1115;
 ER_TOO_MANY_TABLES                =1116;
 ER_TOO_MANY_FIELDS                =1117;
 ER_TOO_BIG_ROWSIZE                =1118;
 ER_STACK_OVERRUN                  =1119;
 ER_WRONG_OUTER_JOIN               =1120;
 ER_NULL_COLUMN_IN_INDEX           =1121;
 ER_CANT_FIND_UDF                  =1122;
 ER_CANT_INITIALIZE_UDF            =1123;
 ER_UDF_NO_PATHS                   =1124;
 ER_UDF_EXISTS                     =1125;
 ER_CANT_OPEN_LIBRARY              =1126;
 ER_CANT_FIND_DL_ENTRY             =1127;
 ER_FUNCTION_NOT_DEFINED           =1128;
 ER_HOST_IS_BLOCKED                =1129;
 ER_HOST_NOT_PRIVILEGED            =1130;
 ER_PASSWORD_ANONYMOUS_USER        =1131;
 ER_PASSWORD_NOT_ALLOWED           =1132;
 ER_PASSWORD_NO_MATCH              =1133;
 ER_UPDATE_INFO                    =1134;
 ER_CANT_CREATE_THREAD             =1135;
 ER_WRONG_VALUE_COUNT_ON_ROW       =1136;
 ER_CANT_REOPEN_TABLE              =1137;
 ER_INVALID_USE_OF_NULL            =1138;
 ER_REGEXP_ERROR                   =1139;
 ER_MIX_OF_GROUP_FUNC_AND_FIELDS   =1140;
 ER_NONEXISTING_GRANT              =1141;
 ER_TABLEACCESS_DENIED_ERROR       =1142;
 ER_COLUMNACCESS_DENIED_ERROR      =1143;
 ER_ILLEGAL_GRANT_FOR_TABLE        =1144;
 ER_GRANT_WRONG_HOST_OR_USER       =1145;
 ER_NO_SUCH_TABLE                  =1146;
 ER_NONEXISTING_TABLE_GRANT        =1147;
 ER_NOT_ALLOWED_COMMAND            =1148;
 ER_SYNTAX_ERROR                   =1149;
 ER_DELAYED_CANT_CHANGE_LOCK       =1150;
 ER_TOO_MANY_DELAYED_THREADS       =1151;
 ER_ABORTING_CONNECTION            =1152;
 ER_NET_PACKET_TOO_LARGE           =1153;
 ER_NET_READ_ERROR_FROM_PIPE       =1154;
 ER_NET_FCNTL_ERROR                =1155;
 ER_NET_PACKETS_OUT_OF_ORDER       =1156;
 ER_NET_UNCOMPRESS_ERROR           =1157;
 ER_NET_READ_ERROR                 =1158;
 ER_NET_READ_INTERRUPTED           =1159;
 ER_NET_ERROR_ON_WRITE             =1160;
 ER_NET_WRITE_INTERRUPTED          =1161;
 ER_TOO_LONG_STRING                =1162;
 ER_TABLE_CANT_HANDLE_BLOB         =1163;
 ER_TABLE_CANT_HANDLE_AUTO_INCREMENT=1164;
 ER_DELAYED_INSERT_TABLE_LOCKED    =1165;
 ER_WRONG_COLUMN_NAME              =1166;
 ER_WRONG_KEY_COLUMN               =1167;
 ER_WRONG_MRG_TABLE                =1168;
 ER_DUP_UNIQUE                     =1169;
 ER_BLOB_KEY_WITHOUT_LENGTH        =1170;
 ER_PRIMARY_CANT_HAVE_NULL         =1171;
 ER_TOO_MANY_ROWS                  =1172;
 ER_REQUIRES_PRIMARY_KEY           =1173;
 ER_NO_RAID_COMPILED               =1174;
 ER_UPDATE_WITHOUT_KEY_IN_SAFE_MODE=1175;
 ER_KEY_DOES_NOT_EXITS             =1176;
 ER_CHECK_NO_SUCH_TABLE            =1177;
 ER_CHECK_NOT_IMPLEMENTED          =1178;
{$IFDEF VER0323XX}
 ER_CANT_DO_THIS_DURING_AN_TRANSACTION =1179;
 ER_GOT_ERROR_DURING_COMMIT        =1180;
 ER_GOT_ERROR_DURING_ROLLBACK      =1181;
 ER_ERROR_MESSAGES                 =182;
{$ELSE}
 ER_ERROR_MESSAGES                 =179;
{$ENDIF}


 REFRESH_GRANT	   =	1;	// Refresh grant tables
 REFRESH_LOG	   =	2;	// Start on new log file
 REFRESH_TABLES	   =	4;	// close all tables
 REFRESH_HOSTS	   =	8;	// Flush host cache
 REFRESH_STATUS	   =	16;	// Flush status variables
 REFRESH_FAST	   =	32768;	// Intern flag

 FIELD_TYPE_DECIMAL     =0;
 FIELD_TYPE_TINY        =1;
 FIELD_TYPE_SHORT       =2;
 FIELD_TYPE_LONG        =3;
 FIELD_TYPE_FLOAT       =4;
 FIELD_TYPE_DOUBLE      =5;
 FIELD_TYPE_NULL        =6;
 FIELD_TYPE_TIMESTAMP   =7;
 FIELD_TYPE_LONGLONG    =8;
 FIELD_TYPE_INT24       =9;
 FIELD_TYPE_DATE        =10;
 FIELD_TYPE_TIME        =11;
 FIELD_TYPE_DATETIME    =12;
 FIELD_TYPE_YEAR        =13;
 FIELD_TYPE_NEWDATE     =14;
 FIELD_TYPE_ENUM        =247;
 FIELD_TYPE_SET         =248;
 FIELD_TYPE_TINY_BLOB   =249;
 FIELD_TYPE_MEDIUM_BLOB =250;
 FIELD_TYPE_LONG_BLOB   =251;
 FIELD_TYPE_BLOB        =252;
 FIELD_TYPE_VAR_STRING  =253;
 FIELD_TYPE_STRING      =254;

type
TMY_BOOL= shortint;

TMY_ULONGLONG=int64;

TMYSQL_FIELD_OFFSET=longword;

{$IFNDEF VER0323XX}
TNET_TYPE=( NET_TYPE_TCPIP, NET_TYPE_SOCKET, NET_TYPE_NAMEDPIPE );
{$ENDIF}

TMYSQL_STATUS =(MYSQL_STATUS_READY,MYSQL_STATUS_GET_RESULT,
                MYSQL_STATUS_USE_RESULT);


TMYSQL_OPTION =(MYSQL_OPT_CONNECT_TIMEOUT, MYSQL_OPT_COMPRESS,
                MYSQL_OPT_NAMED_PIPE, MYSQL_INIT_COMMAND,
                MYSQL_READ_DEFAULT_FILE, MYSQL_READ_DEFAULT_GROUP
{$IFDEF VER0323XX}
                ,MYSQL_SET_CHARSET_DIR, MYSQL_SET_CHARSET_NAME
{$ENDIF}
                );

TMY_SOCKET=tsocket;


TFIELD_TYPES =byte;


PUSED_MEM=^TUSED_MEM;
TUSED_MEM=record
  next:PUSED_MEM;
  left,size: longword;
end;

TERR_PROC=procedure;stdcall;

PMEM_ROOT=^TMEM_ROOT;
TMEM_ROOT=record
  free,used:PUSED_MEM;
  min_malloc,block_size: longword;
  error_handler:TERR_PROC;
end;


PMYSQL_FIELD=^TMYSQL_FIELD;
TMYSQL_FIELD=record
  name,                         // Name of column
  table,                        //Table of column if column was a field
  def:pchar;                    // Default value (set by mysql_list_fields)
  typ: TFIELD_TYPES;	// Type of field. Se mysql_com.h for types
  length,		        // Width of column
  max_length,	                // Max width of selected set
  flags,		        // Div flags
  decimals:longword;	        // Number of decimals in field
end;


PMYSQL_FIELDS=^TMYSQL_FIELDS;
TMYSQL_FIELDS=array[0..0] of TMYSQL_FIELD;


PMYSQL_ROW=^TMYSQL_ROW;
TMYSQL_ROW= array[0..0] of pchar;

PMYSQL_ROW_OFFSET=^TMYSQL_ROWS;
PMYSQL_ROWS=^TMYSQL_ROWS;
TMYSQL_ROWS = record
  next:PMYSQL_ROWS;		// list of rows
  data:PMYSQL_ROW;
end;

PMYSQL_DATA=^TMYSQL_DATA;
TMYSQL_DATA =record
  rows:TMY_ULONGLONG;
  fields:longword;
  data:PMYSQL_ROWS;
  alloc:TMEM_ROOT;
end;

TMYSQL_OPTIONS=record
  connect_timeout,client_flag:longword;
  compress,named_pipe:TMY_BOOL;
  port:longword;
  host,init_command,user,password,unix_socket,db,
  my_cnf_file,my_cnf_group:PCHAR;
{$IFDEF VER0323XX}
  charset_dir,charset_name:PCHAR;
  use_ssl:TMY_BOOL;
  ssl_key,ssl_cert,ssl_ca,ssl_capath:PCHAR;
{$ENDIF}
end;

{$IFDEF VER0323XX}
 PVIO=pointer;
{$ENDIF}

TNET=record
{$IFNDEF VER0323XX}
  nettype:TNET_TYPE;
  hPipe:THANDLE;
{$ELSE}
  vio:PVIO;
{$ENDIF}
  fd: TMY_SOCKET;
  fcntl: integer;
  buff,buff_end,write_pos,read_pos: PCHAR;
  last_error:array[1..MYSQL_ERRMSG_SIZE] of char;
  last_errno,max_packet,timeout,pkt_nr: longword;
  error,return_errno,compress: TMY_BOOL;
  remain_in_buf,length,buf_length,where_b:longword;
  more:TMY_BOOL;
  save_char:char;
end;

{$IFDEF VER0323XX}
TEXTEND_BUFFER_FUNC=function(p1:pointer;wto:pchar;length:longword):PCHAR;stdcall;

TSTRCOLL_FUNC=function(const p1,p2:PCHAR):integer;stdcall;
TSTRXFRM_FUNC=function(p1:PCHAR;const p2:PCHAR;p3:integer):integer;stdcall;
TSTRNNCOLL_FUNC=function(const p1:PCHAR;p2:integer;
                        const p3:PCHAR;p4:integer):integer;stdcall;
TSTRNXFRM_FUNC=function(p1:PCHAR;const p2:PCHAR;p3,p4:integer):integer;stdcall;
TLIKE_RANGE_FUNC=function(const p1:PCHAR;p2:longword;p3:PCHAR;p4:longword;
                          p5,p6:PCHAR;var p7,p8:longword):TMY_BOOL;stdcall;
TISMBCHAR_FUNC=function(const p1,p2:PCHAR):integer;stdcall;
TISMBHEAD_FUNC=function(p1:longword):TMY_BOOL;stdcall;
TMBCHARLEN_FUNC=function(p1:longword):integer;stdcall;

PCHARSET_INFO=^TCHARSET_INFO;
TCHARSET_INFO=record
 number:longword;
 name:PCHAR;
 ctype,to_lower,to_upper,sort_order:PCHAR;
 strxfrm_multiply:longword;
 strcoll:TSTRCOLL_FUNC;
 strxfrm:TSTRXFRM_FUNC;
 strnncoll:TSTRNNCOLL_FUNC;
 strnxfrm:TSTRNXFRM_FUNC;
 like_range:TLIKE_RANGE_FUNC;
 mbmaxlen:longword;
 ismbchar:TISMBCHAR_FUNC;
 ismbhead:TISMBHEAD_FUNC;
 mbcharlen:TMBCHARLEN_FUNC;
end;
{$ENDIF}

PMYSQL=^TMYSQL;
TMYSQL= record
  net: TNET;
{$IFDEF VER0323XX}
  connector_fd:PCHAR;
{$ENDIF}
  host,user,passwd,unix_socket,server_version,host_info,info,db: pchar;
  port,client_flag,server_capabilities,
  protocol_version,field_count: longword;
  thread_id:longword;
  affected_rows,insert_id,extra_info:TMY_ULONGLONG;
  packet_length:longword;
  status: TMYSQL_STATUS;
  fields: PMYSQL_FIELDS;
  field_alloc: TMEM_ROOT;
  free_me, reconnect: TMY_BOOL;
  options:TMYSQL_OPTIONS;
{$IFDEF VER0323XX}
  scramble_buff:array[0..8] of char;
  charset:PCHARSET_INFO;
{$ENDIF}
end;




PMYSQL_RES=^TMYSQL_RES;
TMYSQL_RES =record
  row_count:TMY_ULONGLONG ;
  field_count, current_field:longword;
  fields:PMYSQL_FIELDS;
  data:PMYSQL_DATA;
  data_cursor:PMYSQL_ROWS;
  field_alloc:TMEM_ROOT;
  row:PMYSQL_ROW;			// If unbuffered read
  current_row:PMYSQL_ROW;		// buffer to current row
  lengths:^longword;		// column lengths of current row
  handle:PMYSQL;		// for unbuffered reads
  eof:TMY_BOOL;			// Used my mysql_fetch_row
end;


function mysql_num_rows(res:PMYSQL_RES):TMY_ULONGLONG;stdcall;
function mysql_num_fields(res:PMYSQL_RES):longword;stdcall;
function mysql_eof(res:PMYSQL_RES):TMY_BOOL;stdcall;
function mysql_fetch_field_direct(res:PMYSQL_RES;
                                fieldnr:integer):PMYSQL_FIELD;stdcall;

function mysql_fetch_fields(res:PMYSQL_RES):PMYSQL_FIELDS;stdcall;
function mysql_row_tell(res:PMYSQL_RES):PMYSQL_ROWS;stdcall;
function mysql_field_tell(res:PMYSQL_RES):longword;stdcall;

function mysql_field_count(mysql:PMYSQL):longword;stdcall;
function mysql_affected_rows(mysql:PMYSQL):TMY_ULONGLONG;stdcall;
function mysql_insert_id(mysql:PMYSQL):TMY_ULONGLONG;stdcall;
function mysql_error(mysql:PMYSQL):pchar;stdcall;
function mysql_errno(mysql:PMYSQL):longword;stdcall;
function mysql_info(mysql:PMYSQL):pchar;stdcall;
{$IFNDEF VER0323XX}
function mysql_reload(mysql:PMYSQL):integer;stdcall;
{$ENDIF}
function mysql_thread_id(mysql:PMYSQL):longword;stdcall;


function mysql_init( mysql: PMYSQL):PMYSQL;stdcall;
function mysql_connect( mysql: PMYSQL; const host,user,passwd:pchar):PMYSQL;stdcall;
{$IFDEF VER0323XX}
function mysql_change_user(mysql: PMYSQL;
                      const user,passwd,db:pchar):TMY_BOOL;stdcall;
{$ENDIF}
function mysql_real_connect( mysql: PMYSQL;
                      const host,user,passwd,db:pchar;
                      port:longword;
                      const unix_socket:pchar;
                      clientflag:longword):PMYSQL;stdcall;
procedure mysql_close(sock:PMYSQL);stdcall;
function mysql_select_db(mysql:PMYSQL; const db:pchar):integer;stdcall;
function mysql_query(mysql:PMYSQL; const q:pchar):integer;stdcall;
function mysql_real_query(mysql:PMYSQL; const q:pchar;length:longword):integer;stdcall;

function mysql_create_db(mysql:PMYSQL; const db:pchar):integer;stdcall;
function mysql_drop_db(mysql:PMYSQL; const db:pchar):integer;stdcall;
function mysql_shutdown(mysql:PMYSQL):integer;stdcall;
function mysql_dump_debug_info(mysql:PMYSQL):integer;stdcall;
function mysql_refresh(mysql:PMYSQL; refresh_options:longword):integer;stdcall;

function mysql_kill(mysql:PMYSQL;pid:longword):integer;stdcall;
function mysql_ping(mysql:PMYSQL):integer;stdcall;
function mysql_stat(mysql:PMYSQL):pchar;stdcall;
function mysql_get_server_info(mysql:PMYSQL):pchar;stdcall;
function mysql_get_client_info:pchar;stdcall;
function mysql_get_host_info(mysql:PMYSQL):pchar;stdcall;
function mysql_get_proto_info(mysql:PMYSQL):longword;stdcall;

function mysql_list_dbs(mysql:PMYSQL;const wild:pchar):PMYSQL_RES;stdcall;
function mysql_list_tables(mysql:PMYSQL;const wild:pchar):PMYSQL_RES;stdcall;
function mysql_list_fields(mysql:PMYSQL;const table,wild:pchar):PMYSQL_RES;stdcall;
function mysql_list_processes(mysql:PMYSQL):PMYSQL_RES;stdcall;
function mysql_store_result(mysql:PMYSQL):PMYSQL_RES;stdcall;
function mysql_use_result(mysql:PMYSQL):PMYSQL_RES;stdcall;
function mysql_options(mysql:PMYSQL;option:TMYSQL_OPTION;
                       const arg:pchar):integer;stdcall;
procedure mysql_free_result(res:PMYSQL_RES);stdcall;
procedure mysql_data_seek(res:PMYSQL_RES;offset:TMY_ULONGLONG);stdcall;
function mysql_row_seek(res:PMYSQL_RES;
                        offset:PMYSQL_ROW_OFFSET):PMYSQL_ROW_OFFSET;stdcall;
function mysql_field_seek(res:PMYSQL_RES;
                        offset:TMYSQL_FIELD_OFFSET):TMYSQL_FIELD_OFFSET;stdcall;

function mysql_fetch_row(res:PMYSQL_RES):PMYSQL_ROW;stdcall;
function mysql_fetch_lengths(res:PMYSQL_RES):longword;stdcall;
function mysql_fetch_field(res:PMYSQL_RES):PMYSQL_FIELD;stdcall;
function mysql_escape_string(wto:pchar;
                      const wfrom:pchar;
                      wfromlength:longword):longword;stdcall;
{$IFDEF VER0323XX}
function mysql_real_escape_string(mysql:PMYSQL;
                      wto:pchar;
                      const wfrom:pchar;
                      wfromlength:longword):longword;stdcall;
{$ENDIF}
procedure mysql_debug(const debug:pchar);stdcall;
{$IFDEF VER0323XX}
function mysql_odbc_escape_string(mysql:PMYSQL;
                      wto:pchar; to_length:longword;
                      const wfrom:pchar;from_length:longword;
                      param:pointer;
                      extend_buffer:TEXTEND_BUFFER_FUNC):PCHAR;stdcall;
procedure myodbc_remove_escape(mysql:PMYSQL;name:PCHAR);stdcall;
procedure mysql_thread_safe;stdcall;
{$ENDIF}

implementation

const mysqllib='libmysql.dll';

{$IFNDEF VER0323XX}
function mysql_num_rows(res:PMYSQL_RES):TMY_ULONGLONG;stdcall;
begin
  result:=res^.row_count;
end;

function mysql_num_fields(res:PMYSQL_RES):longword;stdcall;
 begin
  result:=res^.field_count;
 end;

function mysql_eof(res:PMYSQL_RES):TMY_BOOL;stdcall;
 begin
  result:=res^.eof;
 end;

function mysql_fetch_field_direct(res:PMYSQL_RES;
                       fieldnr:integer):PMYSQL_FIELD;stdcall;
 begin
  result:=@(res^.fields^[fieldnr]);
 end;

function mysql_fetch_fields(res:PMYSQL_RES):PMYSQL_FIELDS;stdcall;
 begin
  result:=res^.fields;
 end;

function mysql_row_tell(res:PMYSQL_RES):PMYSQL_ROWS;stdcall;
 begin
  result:=res^.data_cursor;
 end;

function mysql_field_tell(res:PMYSQL_RES):longword;stdcall;
 begin
  result:=res^.current_field;
 end;

function mysql_field_count(mysql:PMYSQL):longword;stdcall;
 begin
  result:=mysql^.field_count;
 end;

function mysql_affected_rows(mysql:PMYSQL):TMY_ULONGLONG;stdcall;
 begin
  result:=mysql^.affected_rows;
 end;

function mysql_insert_id(mysql:PMYSQL):TMY_ULONGLONG;stdcall;
 begin
  result:=mysql^.insert_id;
 end;

function mysql_error(mysql:PMYSQL):pchar;stdcall;
 begin
  result:=@mysql^.net.last_error;
 end;

function mysql_errno(mysql:PMYSQL):longword;stdcall;
 begin
  result:=mysql^.net.last_errno;
 end;

function mysql_info(mysql:PMYSQL):pchar;stdcall;
 begin
  result:=mysql^.info;
 end;

function mysql_reload(mysql:PMYSQL):integer;stdcall;
 begin
  result:=mysql_refresh(mysql,REFRESH_GRANT);
 end;

function mysql_thread_id(mysql:PMYSQL):longword;stdcall;
 begin
  result:=mysql^.thread_id;
 end;
{$ELSE}
function mysql_num_rows(res:PMYSQL_RES):TMY_ULONGLONG;stdcall;external mysqllib;
function mysql_num_fields(res:PMYSQL_RES):longword;stdcall;external mysqllib;
function mysql_eof(res:PMYSQL_RES):TMY_BOOL;stdcall;external mysqllib;
function mysql_fetch_field_direct(res:PMYSQL_RES;
                       fieldnr:integer):PMYSQL_FIELD;stdcall;external mysqllib;
function mysql_fetch_fields(res:PMYSQL_RES):PMYSQL_FIELDS;stdcall;external mysqllib;
function mysql_row_tell(res:PMYSQL_RES):PMYSQL_ROWS;stdcall;external mysqllib;
function mysql_field_tell(res:PMYSQL_RES):longword;stdcall;external mysqllib;
function mysql_field_count(mysql:PMYSQL):longword;stdcall;external mysqllib;
function mysql_affected_rows(mysql:PMYSQL):TMY_ULONGLONG;stdcall;external mysqllib;
function mysql_insert_id(mysql:PMYSQL):TMY_ULONGLONG;stdcall;external mysqllib;
function mysql_error(mysql:PMYSQL):pchar;stdcall;external mysqllib;
function mysql_errno(mysql:PMYSQL):longword;stdcall;external mysqllib;
function mysql_info(mysql:PMYSQL):pchar;stdcall;external mysqllib;
function mysql_thread_id(mysql:PMYSQL):longword;stdcall;external mysqllib;
{$ENDIF}

function mysql_init( mysql: PMYSQL):PMYSQL;stdcall;external mysqllib;
function mysql_connect( mysql: PMYSQL;
                  const host,user,passwd:pchar):PMYSQL;stdcall;external mysqllib;
{$IFDEF VER0323XX}
function mysql_change_user(mysql: PMYSQL;
                      const user,passwd,
                      db:pchar):TMY_BOOL;stdcall;external mysqllib;
{$ENDIF}
function mysql_real_connect( mysql: PMYSQL;
                      const host,user,passwd,db:pchar;
                      port:longword;
                      const unix_socket:pchar;
                      clientflag:longword):PMYSQL;stdcall;external mysqllib;
procedure mysql_close(sock:PMYSQL);stdcall;external mysqllib;

function mysql_select_db(mysql:PMYSQL; const db:pchar):integer;stdcall;external mysqllib;
function mysql_query(mysql:PMYSQL; const q:pchar):integer;stdcall;external mysqllib;
function mysql_real_query(mysql:PMYSQL; const q:pchar;length:longword):integer;stdcall;external mysqllib;
function mysql_create_db(mysql:PMYSQL; const db:pchar):integer;stdcall;external mysqllib;
function mysql_drop_db(mysql:PMYSQL; const db:pchar):integer;stdcall;external mysqllib;
function mysql_shutdown(mysql:PMYSQL):integer;stdcall;external mysqllib;
function mysql_dump_debug_info(mysql:PMYSQL):integer;stdcall;external mysqllib;
function mysql_refresh(mysql:PMYSQL; refresh_options:longword):integer;stdcall;external mysqllib;
function mysql_kill(mysql:PMYSQL;pid:longword):integer;stdcall;external mysqllib;
function mysql_ping(mysql:PMYSQL):integer;stdcall;external mysqllib;
function mysql_stat(mysql:PMYSQL):pchar;stdcall;external mysqllib;
function mysql_get_server_info(mysql:PMYSQL):pchar;stdcall;external mysqllib;
function mysql_get_client_info:pchar;stdcall;external mysqllib;
function mysql_get_host_info(mysql:PMYSQL):pchar;stdcall;external mysqllib;
function mysql_get_proto_info(mysql:PMYSQL):longword;stdcall;external mysqllib;
function mysql_list_dbs(mysql:PMYSQL;const wild:pchar):PMYSQL_RES;stdcall;external mysqllib;
function mysql_list_tables(mysql:PMYSQL;const wild:pchar):PMYSQL_RES;stdcall;external mysqllib;
function mysql_list_fields(mysql:PMYSQL;const table,wild:pchar):PMYSQL_RES;stdcall;external mysqllib;
function mysql_list_processes(mysql:PMYSQL):PMYSQL_RES;stdcall;external mysqllib;
function mysql_store_result(mysql:PMYSQL):PMYSQL_RES;stdcall;external mysqllib;
function mysql_use_result(mysql:PMYSQL):PMYSQL_RES;stdcall;external mysqllib;
function mysql_options(mysql:PMYSQL;option:TMYSQL_OPTION;
                       const arg:pchar):integer;stdcall;external mysqllib;
procedure mysql_free_result(res:PMYSQL_RES);stdcall;external mysqllib;
procedure mysql_data_seek(res:PMYSQL_RES;offset:TMY_ULONGLONG);stdcall;external mysqllib;
function mysql_row_seek(res:PMYSQL_RES;
               offset:PMYSQL_ROW_OFFSET):PMYSQL_ROW_OFFSET;stdcall;external mysqllib;
function mysql_field_seek(res:PMYSQL_RES;
               offset:TMYSQL_FIELD_OFFSET):TMYSQL_FIELD_OFFSET;stdcall;external mysqllib;

function mysql_fetch_row(res:PMYSQL_RES):PMYSQL_ROW;stdcall;external mysqllib;
function mysql_fetch_lengths(res:PMYSQL_RES):longword;stdcall;external mysqllib;
function mysql_fetch_field(res:PMYSQL_RES):PMYSQL_FIELD;stdcall;external mysqllib;
function mysql_escape_string(wto:pchar;
                      const wfrom:pchar;
                      wfromlength:longword):longword;stdcall;external mysqllib;
{$IFDEF VER0323XX}
function mysql_real_escape_string(mysql:PMYSQL;
                      wto:pchar;
                      const wfrom:pchar;
                      wfromlength:longword):longword;stdcall;external mysqllib;
{$ENDIF}

procedure mysql_debug(const debug:pchar);stdcall;external mysqllib;
{$IFDEF VER0323XX}
function mysql_odbc_escape_string(mysql:PMYSQL;
                      wto:pchar; to_length:longword;
                      const wfrom:pchar;from_length:longword;
                      param:pointer;
                      extend_buffer:TEXTEND_BUFFER_FUNC):PCHAR;stdcall;external mysqllib;
procedure myodbc_remove_escape(mysql:PMYSQL;name:PCHAR);stdcall;external mysqllib;
procedure mysql_thread_safe;stdcall;external mysqllib;
{$ENDIF}

end.
