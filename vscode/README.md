Vscode 首先装上这两个插件

  <img width="627" alt="image" src="https://github.com/user-attachments/assets/dd4d1918-fbb8-451d-8c60-7cf65ca0d386">

1. vim
   a.mac terminal里执行介绍里的那几句
   b.在vs的user settings.js 里copy 介绍里的那一段 vim设置
   <img width="833" alt="image" src="https://github.com/user-attachments/assets/2246db9b-ab92-493c-a52e-5cbfb0c11b14">

   shift+commond+P 打开运行然后搜settings.json, 默认的settings是改不了的，只能改用户的settings
   <img width="682" alt="image" src="https://github.com/user-attachments/assets/3dd3f1aa-569e-46d3-b73b-0563e65b9939">

   可以在用户settings.json里手动 修改一些东西如一些快捷键，也可以直接在插件里点设置，最后也会体现在settings.js里
   <img width="711" alt="image" src="https://github.com/user-attachments/assets/3a52be76-ce51-4036-b98b-f5e4a3bda391">
   <img width="546" alt="image" src="https://github.com/user-attachments/assets/a4d6f5c6-72c2-4ea9-b0d3-104507786ad0">


2. systemverilog
    可以加一些代码片段
   <img width="386" alt="image" src="https://github.com/user-attachments/assets/2cee2926-e64f-4158-a881-dfca389282a8">
   <img width="675" alt="image" src="https://github.com/user-attachments/assets/aca1eab4-08c4-4f9e-8652-cbd1cc8806ad">

{
	// Place your snippets for systemverilog here. Each snippet is defined under a snippet name and has a prefix, body and 
	// description. The prefix is what is used to trigger the snippet and the body will be expanded and inserted. Possible variables are:
	// $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. Placeholders with the 
	// same ids are connected.
	// Example:
	// "Print to console": {
	// 	"prefix": "log",
	// 	"body": [
	// 		"console.log('$1');",
	// 		"$2"
	// 	],
	// 	"description": "Log output to console"
	// }
	"Print uvm_info_low": {
		"prefix": "dl",
		"body": [
			"`uvm_info(this.get_type_name(), \"\", UVM_LOW);"
		],
		"description": "print uvm_info_low"
	},
	"Print uvm_info_medium": {
		"prefix": "dm",
		"body": [
			"`uvm_info(this.get_type_name(), \"\", UVM_MEDIUM);"
		],
		"description": "print uvm_info_medium"
	},
	"Print uvm_info_high": {
		"prefix": "dh",
		"body": [
			"`uvm_info(this.get_type_name(), \"\", UVM_HIGH);"
		],
		"description": "print uvm_info_high"
	},
	"Print uvm_info_warning": {
		"prefix": "dw",
		"body": [
			"`uvm_warning(this.get_type_name(), \"\");"
		],
		"description": "print uvm_warning"
	},
	"Print uvm_info_error": {
		"prefix": "de",
		"body": [
			"`uvm_error(this.get_type_name(), \"\");"
		],
		"description": "print uvm_error"
	},
	"Print uvm_info_fatal": {
		"prefix": "df",
		"body": [
			"`uvm_fatal(this.get_type_name(), \"\");"
		],
		"description": "print uvm_fatal"
	},
	"Print uvm_info_str": {
		"prefix": "dj",
		"body": [
			"`uvm_info(this.get_type_name(),",
			"    {\$sformatf(\"\\n......   %0d;\",),",
			"     \$sformatf(\"\\n......   %0d;\",),",
			"     \$sformatf(\"\\n......   %0d;\",),",
			"     \$sformatf(\"\\n......   %0d;\",),",
			"    },UVM_LOW"
			"    )"
		],
		"description": "print uvm_info_str"
	} 
}
