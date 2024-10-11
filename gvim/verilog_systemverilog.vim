"-------------------------------------------------------------------------------------
" Vim syntax file
" Language:     Verilog/SystemVerilog HDL + UVM
" Author:       Amit Sethi, Amal Khailtash, Khalid Siddiqi
" Last Change:  Sun Mar  6 21:11:18 PST 2011
" Version:      3.0
"
" Maintainer:
"
" Authors:
"   Amit Sethi     <amitrajsethi@yahoo.com>
"   Amal Khailtash <akhailtash@rogers.com>
"   Khalid Siddiqi <khalid2@yahoo.com> 
"
" Credits:
"   Originally created by
"     Amit Sethi <amitrajsethi@yahoo.com>
"   OVM 2.0 Classes/Methods
"     Amal Khailtash <akhailtash@rogers.com>
"   OVM 2.0 to UVM conversion
"     Khalid Siddiqi <khalid2@yahoo.com>
"
" Revision Comments:
"     Amit Sethi <amitrajsethi@yahoo.com> - Thu Jul 27 12:54:08 IST 2006
"       Version 1.1
"     Amal Khailtash <akhailtash@rogers.com> - Mon Sep 29 09:55:42 EDT 2008
"       Version 2.0
"       Added OVM 2.0 Keyworks
"       Another option is the work by Anil Raj Gopalakrishnan <anilraj.gr@gmail.com>
"         http://verifideas.blogspot.com/2008/09/better-syntax-highlighting-in.html
"     Khalid Siddiqi <khalid2@yahoo.com> Sun Mar  6 21:11:18 PST 2011
"       Version 3.0
"       Converted OVM 2.0 version to UVM 

" Extends Verilog syntax
" Requires $VIMRUNTIME/syntax/verilog.vim to exist
" For more info on setting $VIMRUNTIME etc. see: 
" http://vimdoc.sourceforge.net/htmldoc/syntax.html

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"-------------------------------------------------------------------------------------

if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif


" Read in Verilog syntax files
if version < 600
   so syntax/verilog.vim
else
   runtime! syntax/verilog.vim
endif


syn sync lines=1000

"##########################################################
"       SystemVerilog Syntax
"##########################################################

syn keyword verilogStatement   module endmodule
syn keyword verilogStatement   always_comb always_ff always_latch
syn keyword verilogStatement   class endclass
syn keyword verilogStatement   virtual local const protected
syn keyword verilogStatement   package endpackage
syn keyword verilogStatement   rand randc constraint randomize
syn keyword verilogStatement   with inside dist
syn keyword verilogStatement   randcase
syn keyword verilogStatement   sequence endsequence randsequence 
syn keyword verilogStatement   get_randstate set_randstate
syn keyword verilogStatement   srandom
syn keyword verilogStatement   logic bit byte time
syn keyword verilogStatement   int longint shortint
syn keyword verilogStatement   struct packed
syn keyword verilogStatement   final
syn keyword verilogStatement   import export
syn keyword verilogStatement   context pure
syn keyword verilogStatement   void shortreal chandle string
syn keyword verilogStatement   clocking endclocking
syn keyword verilogStatement   interface endinterface modport
syn keyword verilogStatement   cover covergroup coverpoint endgroup
syn keyword verilogStatement   property endproperty
syn keyword verilogStatement   program endprogram
syn keyword verilogStatement   bins binsof illegal_bins ignore_bins
syn keyword verilogStatement   alias matches solve static assert
syn keyword verilogStatement   assume super before expect bind
syn keyword verilogStatement   extends null tagged extern this
syn keyword verilogStatement   first_match throughout timeprecision
syn keyword verilogStatement   timeunit priority type union unique
syn keyword verilogStatement   uwire var cross ref wait_order intersect
syn keyword verilogStatement   wildcard within
syn keyword verilogStatement   semaphore triggered
syn keyword verilogStatement   std
syn keyword verilogStatement   new
syn keyword verilogStatement   soft 

syn keyword verilogTypeDef     typedef enum

syn keyword verilogConditional iff

syn keyword verilogRepeat      return break continue
syn keyword verilogRepeat      do while foreach

syn keyword verilogLabel       join_any join_none forkjoin

syn match   verilogGlobal      "`begin_\w\+"
syn match   verilogGlobal      "`end_\w\+"
syn match   verilogGlobal      "`remove_\w\+"
syn match   verilogGlobal      "`restore_\w\+"

syn match   verilogGlobal      "`[a-zA-Z0-9_]\+\>"

syn match   verilogNumber      "\<[0-9_\.]\+\([fpnum]\|\)s\>"
syn match   verilogNumber      "\<[0-9_\.]\+step\>"

syn match   verilogMethod      "\.atobin\>"
syn match   verilogMethod      "\.atohex\>"
syn match   verilogMethod      "\.atoi\>"
syn match   verilogMethod      "\.atooct\>"
syn match   verilogMethod      "\.atoreal\>"
syn match   verilogMethod      "\.await\>"
syn match   verilogMethod      "\.back\>"
syn match   verilogMethod      "\.bintoa\>"
syn match   verilogMethod      "\.clear\>"
syn match   verilogMethod      "\.compare\>"
syn match   verilogMethod      "\.data\>"
syn match   verilogMethod      "\.delete\>"
syn match   verilogMethod      "\.empty\>"
syn match   verilogMethod      "\.eq\>"
syn match   verilogMethod      "\.erase\>"
syn match   verilogMethod      "\.erase_range\>"
syn match   verilogMethod      "\.exists\>"
syn match   verilogMethod      "\.find\>"
syn match   verilogMethod      "\.find_first\>"
syn match   verilogMethod      "\.find_first_index\>"
syn match   verilogMethod      "\.find_index\>"
syn match   verilogMethod      "\.find_last\>"
syn match   verilogMethod      "\.find_last_index\>"
syn match   verilogMethod      "\.finish\>"
syn match   verilogMethod      "\.first\>"
syn match   verilogMethod      "\.front\>"
syn match   verilogMethod      "\.get\>"
syn match   verilogMethod      "\.getc\>"
syn match   verilogMethod      "\.hextoa\>"
syn match   verilogMethod      "\.icompare\>"
syn match   verilogMethod      "\.index\>"
syn match   verilogMethod      "\.insert\>"
syn match   verilogMethod      "\.insert_range\>"
syn match   verilogMethod      "\.itoa\>"
syn match   verilogMethod      "\.kill\>"
syn match   verilogMethod      "\.last\>"
syn match   verilogMethod      "\.len\>"
syn match   verilogMethod      "\.max\>"
syn match   verilogMethod      "\.min\>"
syn match   verilogMethod      "\.name\>"
syn match   verilogMethod      "\.neq\>"
syn match   verilogMethod      "\.new\>"
syn match   verilogMethod      "\.next\>"
syn match   verilogMethod      "\.num\>"
syn match   verilogMethod      "\.octtoa\>"
syn match   verilogMethod      "\.peek\>"
syn match   verilogMethod      "\.pop_back\>"
syn match   verilogMethod      "\.pop_front\>"
syn match   verilogMethod      "\.prev\>"
syn match   verilogMethod      "\.product\>"
syn match   verilogMethod      "\.purge\>"
syn match   verilogMethod      "\.push_back\>"
syn match   verilogMethod      "\.push_front\>"
syn match   verilogMethod      "\.put\>"
syn match   verilogMethod      "\.putc\>"
syn match   verilogMethod      "\.rand_mode\>"
syn match   verilogMethod      "\.realtoa\>"
syn match   verilogMethod      "\.resume\>"
syn match   verilogMethod      "\.reverse\>"
syn match   verilogMethod      "\.rsort\>"
syn match   verilogMethod      "\.self\>"
syn match   verilogMethod      "\.set\>"
syn match   verilogMethod      "\.shuffle\>"
syn match   verilogMethod      "\.size\>"
syn match   verilogMethod      "\.sort\>"
syn match   verilogMethod      "\.start\>"
syn match   verilogMethod      "\.status\>"
syn match   verilogMethod      "\.stop\>"
syn match   verilogMethod      "\.substr\>"
syn match   verilogMethod      "\.sum\>"
syn match   verilogMethod      "\.suspend\>"
syn match   verilogMethod      "\.swap\>"
syn match   verilogMethod      "\.tolower\>"
syn match   verilogMethod      "\.toupper\>"
syn match   verilogMethod      "\.try_get\>"
syn match   verilogMethod      "\.try_peek\>"
syn match   verilogMethod      "\.try_put\>"
syn match   verilogMethod      "\.unique\>"
syn match   verilogMethod      "\.unique_index\>"
syn match   verilogMethod      "\.xor\>"

" syn match   verilogAssertion   "\<\w\+\>\s*:\s*\<assert\>\_.\{-});"
syn match   verilogAssertion   "\<\w\+\>\s*:\s*\<assert\>"
"{{{
syn keyword uvmClass  uvm_abstract_component_registry uvm_abstract_object_registry uvm_agent 
syn keyword uvmClass uvm_algorithmic_comparator uvm_analysis_export uvm_analysis_imp uvm_analysis_port 
syn keyword uvmClass uvm_barrier uvm_bit_rsrc uvm_bottom_up_visitor_adapter uvm_bottomup_phase 
syn keyword uvmClass uvm_build_phase uvm_built_in_clone uvm_built_in_comp uvm_built_in_converter 
syn keyword uvmClass uvm_built_in_pair uvm_by_level_visitor_adapter uvm_byte_rsrc uvm_callback 
syn keyword uvmClass uvm_callback_iter uvm_callbacks uvm_callbacks_base uvm_cause_effect_link 
syn keyword uvmClass uvm_check_phase uvm_class_clone uvm_class_comp uvm_class_converter 
syn keyword uvmClass uvm_class_pair uvm_cmdline_processor uvm_comparer uvm_component uvm_component_name_check_visitor 
syn keyword uvmClass uvm_component_proxy uvm_component_registry uvm_config_db uvm_config_db_options 
syn keyword uvmClass uvm_configure_phase uvm_connect_phase uvm_copier uvm_coreservice_t 
syn keyword uvmClass uvm_default_coreservice_t uvm_default_factory uvm_default_report_server 
syn keyword uvmClass uvm_derived_callbacks uvm_domain uvm_driver uvm_end_of_elaboration_phase 
syn keyword uvmClass uvm_enum_wrapper uvm_env uvm_event uvm_event_base uvm_event_callback 
syn keyword uvmClass uvm_extract_phase uvm_factory uvm_factory_override uvm_field_op uvm_final_phase 
syn keyword uvmClass uvm_get_to_lock_dap uvm_hdl_path_concat uvm_heartbeat uvm_heartbeat_callback 
syn keyword uvmClass uvm_in_order_built_in_comparator uvm_in_order_class_comparator uvm_in_order_comparator 
syn keyword uvmClass uvm_int_rsrc uvm_line_printer uvm_link_base uvm_main_phase uvm_mem 
syn keyword uvmClass uvm_mem_mam uvm_mem_mam_cfg uvm_mem_region uvm_monitor uvm_obj_rsrc 
syn keyword uvmClass uvm_object uvm_object_registry uvm_object_string_pool uvm_object_wrapper 
syn keyword uvmClass uvm_objection uvm_objection_callback uvm_objection_context_object 
syn keyword uvmClass uvm_packer uvm_parent_child_link uvm_phase uvm_phase_cb uvm_phase_state_change 
syn keyword uvmClass uvm_policy uvm_pool uvm_port_base uvm_port_component uvm_port_component_base 
syn keyword uvmClass uvm_post_configure_phase uvm_post_main_phase uvm_post_reset_phase 
syn keyword uvmClass uvm_post_shutdown_phase uvm_pre_configure_phase uvm_pre_main_phase 
syn keyword uvmClass uvm_pre_reset_phase uvm_pre_shutdown_phase uvm_printer uvm_printer_element 
syn keyword uvmClass uvm_printer_element_proxy uvm_push_driver uvm_push_sequencer uvm_queue 
syn keyword uvmClass uvm_random_stimulus uvm_recorder uvm_reg uvm_reg_adapter uvm_reg_backdoor 
syn keyword uvmClass uvm_reg_block uvm_reg_cbs uvm_reg_field uvm_reg_fifo uvm_reg_file 
syn keyword uvmClass uvm_reg_frontdoor uvm_reg_indirect_data uvm_reg_indirect_ftdr_seq 
syn keyword uvmClass uvm_reg_item uvm_reg_map uvm_reg_map_info uvm_reg_predictor uvm_reg_read_only_cbs 
syn keyword uvmClass uvm_reg_seq_base uvm_reg_sequence uvm_reg_tlm_adapter uvm_reg_transaction_order_policy 
syn keyword uvmClass uvm_reg_write_only_cbs uvm_registry_common uvm_registry_component_creator 
syn keyword uvmClass uvm_registry_object_creator uvm_related_link uvm_report_catcher uvm_report_handler 
syn keyword uvmClass uvm_report_message uvm_report_message_element_base uvm_report_message_element_container 
syn keyword uvmClass uvm_report_message_int_element uvm_report_message_object_element 
syn keyword uvmClass uvm_report_message_string_element uvm_report_object uvm_report_phase 
syn keyword uvmClass uvm_report_server uvm_reset_phase uvm_resource uvm_resource_base 
syn keyword uvmClass uvm_resource_db uvm_resource_db_options uvm_resource_options uvm_resource_pool 
syn keyword uvmClass uvm_root uvm_run_phase uvm_run_test_callback uvm_scoreboard uvm_seed_map 
syn keyword uvmClass uvm_sequence uvm_sequence_base uvm_sequence_item uvm_sequence_library 
syn keyword uvmClass uvm_sequence_library_cfg uvm_sequencer uvm_sequencer_analysis_fifo 
syn keyword uvmClass uvm_sequencer_base uvm_sequencer_param_base uvm_set_before_get_dap 
syn keyword uvmClass uvm_set_get_dap_base uvm_shutdown_phase uvm_simple_lock_dap uvm_spell_chkr 
syn keyword uvmClass uvm_sqr_if_base uvm_start_of_simulation_phase uvm_string_rsrc uvm_structure_proxy 
syn keyword uvmClass uvm_subscriber uvm_table_printer uvm_task_phase uvm_test uvm_test_done_objection 
syn keyword uvmClass uvm_text_recorder uvm_text_tr_database uvm_text_tr_stream uvm_time 
syn keyword uvmClass uvm_tlm_analysis_fifo uvm_tlm_b_initiator_socket uvm_tlm_b_passthrough_initiator_socket 
syn keyword uvmClass uvm_tlm_b_passthrough_target_socket uvm_tlm_b_target_socket uvm_tlm_b_target_socket_base 
syn keyword uvmClass uvm_tlm_extension uvm_tlm_extension_base uvm_tlm_fifo uvm_tlm_fifo_base 
syn keyword uvmClass uvm_tlm_generic_payload uvm_tlm_if uvm_tlm_if_base uvm_tlm_nb_initiator_socket 
syn keyword uvmClass uvm_tlm_nb_initiator_socket_base uvm_tlm_nb_passthrough_initiator_socket 
syn keyword uvmClass uvm_tlm_nb_passthrough_initiator_socket_base uvm_tlm_nb_passthrough_target_socket 
syn keyword uvmClass uvm_tlm_nb_passthrough_target_socket_base uvm_tlm_nb_target_socket 
syn keyword uvmClass uvm_tlm_nb_target_socket_base uvm_tlm_req_rsp_channel uvm_tlm_transport_channel 
syn keyword uvmClass uvm_top_down_visitor_adapter uvm_topdown_phase uvm_tr_database uvm_tr_stream 
syn keyword uvmClass uvm_transaction uvm_tree_printer uvm_typed_callbacks uvm_typeid uvm_utils 
syn keyword uvmClass uvm_visitor uvm_visitor_adapter uvm_vreg uvm_vreg_cbs uvm_vreg_field 


syn keyword uvmMethod ID Xadd_vregX XatomicX Xcheck_accessX Xdelete_vregX Xget_bus_infoX 
syn keyword uvmMethod Xget_fields_accessX Xinit_address_mapX Xinit_address_mapsX Xis_locked_by_fieldX 
syn keyword uvmMethod Xlock_modelX XpredictX XreadX XsampleX Xset_busyX XupdateX Xverify_map_configX 
syn keyword uvmMethod accept accept_tr add add_block add_by_name add_callback add_child 
syn keyword uvmMethod add_coverage add_field add_frontdoors add_hdl_path add_hdl_path_slice 
syn keyword uvmMethod add_int add_map add_mem add_object add_parent_map add_path add_reg 
syn keyword uvmMethod add_sequence add_sequences add_slice add_string add_submap add_typewide_sequence 
syn keyword uvmMethod add_typewide_sequences add_uvm_phases add_vreg adjust_name all_dropped 
syn keyword uvmMethod allocate analysis_write apply_config_settings b_transport backdoor 
syn keyword uvmMethod backdoor_read backdoor_read_func backdoor_watch backdoor_write base_type_name 
syn keyword uvmMethod begin_child_tr begin_tr begin_v body build build_coverage build_phase 
syn keyword uvmMethod burst_read burst_write bus2reg callback_mode can_get can_peek can_put 
syn keyword uvmMethod cancel capacity catch ceil check check_config_usage check_data_width 
syn keyword uvmMethod check_handle_kind check_inst_override_exists check_phase check_port_connections 
syn keyword uvmMethod check_registration clean_exit_sequence clear clear_children clear_extension 
syn keyword uvmMethod clear_extensions clear_hdl_path clear_response_queue clear_successors 
syn keyword uvmMethod clone clone_and_update close close_db comp compare compare_field 
syn keyword uvmMethod compare_field_int compare_field_real compare_object compare_string 
syn keyword uvmMethod compose_report_message configure configure_phase connect connect_phase 
syn keyword uvmMethod convert2string copy copy_object create create_aliased_exports create_by_type 
syn keyword uvmMethod create_component create_component_by_name create_component_by_type 
syn keyword uvmMethod create_item create_map create_object create_object_by_name create_object_by_type 
syn keyword uvmMethod create_stream create_type_by_name current_grabber debug_connected_to 
syn keyword uvmMethod debug_create_by_name debug_create_by_type debug_provided_to debug_report_catcher 
syn keyword uvmMethod decode decr define_access define_domain delete delete_by_name delete_callback 
syn keyword uvmMethod delete_elements die disable_auto_item_recording disable_recording 
syn keyword uvmMethod disable_user_hook display display_objections do_accept_tr do_begin_tr 
syn keyword uvmMethod do_bus_access do_bus_read do_bus_write do_check do_clone do_close 
syn keyword uvmMethod do_close_db do_compare do_copy do_end_tr do_establish_link do_execute_op 
syn keyword uvmMethod do_flush do_free do_get_lhs do_get_rhs do_kill do_open do_open_db 
syn keyword uvmMethod do_open_recorder do_open_stream do_pack do_post_read do_post_write 
syn keyword uvmMethod do_pre_read do_pre_write do_predict do_print do_read do_record do_record_field 
syn keyword uvmMethod do_record_field_int do_record_field_real do_record_generic do_record_object 
syn keyword uvmMethod do_record_string do_record_time do_reg_item do_resolve_bindings do_set_lhs 
syn keyword uvmMethod do_set_rhs do_task_phase do_unpack do_write drop_objection dropped 
syn keyword uvmMethod dump dump_get_records emit enable_recording encode end_of_elaboration 
syn keyword uvmMethod end_of_elaboration_phase end_prematurely end_tr end_v enough_bits 
syn keyword uvmMethod establish_link exec_func exec_task execute execute_item execute_phase 
syn keyword uvmMethod execute_report_message exists extension_exists extract extract_phase 
syn keyword uvmMethod f_display final_phase find find_all find_block find_blocks find_by_name 
syn keyword uvmMethod find_override_by_name find_override_by_type find_unused_resources 
syn keyword uvmMethod find_wrapper_by_name finish_item first flush for_each format_action 
syn keyword uvmMethod format_footer format_header format_row free free_tr free_tr_stream 
syn keyword uvmMethod from_name generate_stimulus get get_abstime get_accept_time get_access 
syn keyword uvmMethod get_action get_active_object get_active_object_depth get_adapter 
syn keyword uvmMethod get_addr_unit_bytes get_address get_addresses get_adjacent_predecessor_nodes 
syn keyword uvmMethod get_adjacent_successor_nodes get_all get_arbitration get_arbitration_sequence 
syn keyword uvmMethod get_arg_matches get_arg_value get_arg_values get_args get_auto_predict 
syn keyword uvmMethod get_automatic_phase_objection get_backdoor get_base_addr get_base_response 
syn keyword uvmMethod get_begin_elements get_begin_time get_bit get_bits get_block get_block_by_name 
syn keyword uvmMethod get_blocks get_bottom_element get_by_name get_by_type get_byte get_byte_enable 
syn keyword uvmMethod get_byte_enable_length get_bytes get_cb get_check_on_read get_check_type 
syn keyword uvmMethod get_child get_children get_client get_close_time get_command get_common_domain 
syn keyword uvmMethod get_comp get_compare get_component_visitor get_config get_connected_to 
syn keyword uvmMethod get_context get_core_state get_coverage get_current_item get_data 
syn keyword uvmMethod get_data_length get_db get_default get_default_comparer get_default_copier 
syn keyword uvmMethod get_default_data get_default_door get_default_hdl_path get_default_map 
syn keyword uvmMethod get_default_max_ready_to_end_iterations get_default_packer get_default_path 
syn keyword uvmMethod get_default_precedence get_default_printer get_default_radix get_default_tr_database 
syn keyword uvmMethod get_depth get_domain get_domain_name get_domains get_drain_time get_element_container 
syn keyword uvmMethod get_element_name get_element_size get_element_type_name get_element_value 
syn keyword uvmMethod get_elements get_end_elements get_end_node get_end_offset get_end_time 
syn keyword uvmMethod get_endian get_event_pool get_extension get_factory get_field_by_name 
syn keyword uvmMethod get_fields get_file get_file_handle get_filename get_finish_on_completion 
syn keyword uvmMethod get_first get_first_child get_fname get_frontdoor get_full_hdl_path 
syn keyword uvmMethod get_full_name get_global get_global_pool get_global_queue get_global_seed 
syn keyword uvmMethod get_handle get_hdl_path get_hdl_path_kinds get_highest_precedence 
syn keyword uvmMethod get_id get_id_count get_id_enabled get_id_set get_if get_immediate_children 
syn keyword uvmMethod get_imp get_incr get_indent get_indirect_reg get_initiator get_inst 
syn keyword uvmMethod get_inst_count get_inst_id get_int get_ints get_is_active get_item 
syn keyword uvmMethod get_jump_target get_knobs get_last get_len get_lhs get_line get_line_prefix 
syn keyword uvmMethod get_link get_local_map get_lsb_pos get_lsb_pos_in_register get_map_by_name 
syn keyword uvmMethod get_maps get_max_depth get_max_quit_count get_max_ready_to_end_iterations 
syn keyword uvmMethod get_max_size get_mem_by_name get_mem_by_offset get_mem_map_info get_memories 
syn keyword uvmMethod get_memory get_message get_message_database get_mirrored_value get_miscompares 
syn keyword uvmMethod get_n_bits get_n_bytes get_n_maps get_n_memlocs get_name get_name_constraint 
syn keyword uvmMethod get_name_enabled get_next get_next_child get_next_item get_num_children 
syn keyword uvmMethod get_num_extensions get_num_last_reqs get_num_last_rsps get_num_reqs_sent 
syn keyword uvmMethod get_num_rsps_received get_num_waiters get_object_type get_objection 
syn keyword uvmMethod get_objection_count get_objection_total get_objectors get_offset 
syn keyword uvmMethod get_offset_in_memory get_op_name get_op_type get_open_time get_packed_bits 
syn keyword uvmMethod get_packed_bytes get_packed_ints get_packed_longints get_packed_size 
syn keyword uvmMethod get_parent get_parent_map get_parent_sequence get_phase_max_ready_to_end 
syn keyword uvmMethod get_phase_type get_physical_addresses get_physical_addresses_to_map 
syn keyword uvmMethod get_plusargs get_policy get_port get_precedence get_predecessors_for_successors 
syn keyword uvmMethod get_prev get_prev_state get_priority get_propagate_mode get_provided_to 
syn keyword uvmMethod get_quit_count get_radix_enabled get_radix_str get_radix_string get_randomize_enabled 
syn keyword uvmMethod get_ready_to_end_count get_realtime get_record_attribute_handle get_recorder_from_handle 
syn keyword uvmMethod get_recorders get_recursion_policy get_reg_by_name get_reg_by_offset 
syn keyword uvmMethod get_reg_map_info get_regfile get_region get_register get_registers 
syn keyword uvmMethod get_report_action get_report_catcher get_report_file_handle get_report_handler 
syn keyword uvmMethod get_report_max_verbosity_level get_report_object get_report_server 
syn keyword uvmMethod get_report_verbosity_level get_reset get_resource_pool get_resource_pool_default_precedence 
syn keyword uvmMethod get_response get_response_queue_depth get_response_queue_error_report_disabled 
syn keyword uvmMethod get_response_queue_error_report_enabled get_response_status get_response_string 
syn keyword uvmMethod get_result get_rhs get_rights get_root get_root_blocks get_root_enabled 
syn keyword uvmMethod get_root_map get_root_sequence get_root_sequence_name get_run_count 
syn keyword uvmMethod get_schedule get_schedule_name get_scope get_separators get_sequence 
syn keyword uvmMethod get_sequence_id get_sequence_path get_sequence_state get_sequencer 
syn keyword uvmMethod get_sequences get_server get_severity get_severity_count get_severity_id_file 
syn keyword uvmMethod get_severity_set get_show_max get_size get_size_enabled get_start_offset 
syn keyword uvmMethod get_starting_phase get_state get_stream get_stream_from_handle get_stream_type_name 
syn keyword uvmMethod get_streaming_width get_streams get_submap_offset get_submaps get_threshold 
syn keyword uvmMethod get_tool_name get_tool_version get_top_element get_tr_database get_tr_handle 
syn keyword uvmMethod get_tr_stream get_transaction_id get_transaction_order_policy get_trigger_data 
syn keyword uvmMethod get_trigger_time get_type get_type_handle get_type_handle_name get_type_name 
syn keyword uvmMethod get_type_name_enabled get_unused_element get_use_response_handler 
syn keyword uvmMethod get_use_sequence_info get_uvm_args get_uvm_domain get_uvm_schedule 
syn keyword uvmMethod get_uvm_seeding get_value get_verbosity get_verbosity_level get_vfield_by_name 
syn keyword uvmMethod get_virtual_fields get_virtual_registers get_vreg_by_name get_vreg_by_offset 
syn keyword uvmMethod grab grant_queued_locks has_child has_coverage has_do_available has_hdl_path 
syn keyword uvmMethod has_lock has_reset has_update_threads implement include_coverage 
syn keyword uvmMethod incr incr_id_count incr_quit_count incr_severity_count index_error 
syn keyword uvmMethod index_string init init_access_record init_sequence_library initialize 
syn keyword uvmMethod insert is is_active is_after is_auditing is_auto_item_recording_enabled 
syn keyword uvmMethod is_auto_updated is_before is_blocked is_busy is_child is_closed is_dmi_allowed 
syn keyword uvmMethod is_domain is_empty is_enabled is_export is_full is_grabbed is_hdl_path_root 
syn keyword uvmMethod is_imp is_in_map is_indv_accessible is_item is_known_access is_locked 
syn keyword uvmMethod is_null is_off is_on is_open is_port is_quit_count_reached is_read 
syn keyword uvmMethod is_read_only is_recording_enabled is_relevant is_response_error is_response_ok 
syn keyword uvmMethod is_tracing is_type_name_registered is_type_registered is_unbounded 
syn keyword uvmMethod is_volatile is_write issue istop item_done item_done_get_trigger_data 
syn keyword uvmMethod item_done_trigger jump jump_all jump_to kill kill_sequence kill_successors 
syn keyword uvmMethod kill_update_thread last last_req last_rsp levenshtein_distance link_tr 
syn keyword uvmMethod lock lock_model lookup lookup_name lookup_regex lookup_regex_names 
syn keyword uvmMethod lookup_scope lookup_type main_phase massage_scope match_scope max_size 
syn keyword uvmMethod mid_do min_size minimum mirror mirror_reg nb_transport nb_transport_bw 
syn keyword uvmMethod nb_transport_fw needs_update new new_report_message next num object_compared 
syn keyword uvmMethod object_copied object_printed ok_to_get ok_to_peek ok_to_put open_db 
syn keyword uvmMethod open_file open_recorder open_stream order pack pack_bits pack_bytes 
syn keyword uvmMethod pack_field pack_field_int pack_ints pack_longints pack_object pack_real 
syn keyword uvmMethod pack_string pack_time peek peek_mem peek_reg perform_accesses phase_ended 
syn keyword uvmMethod phase_ready_to_end phase_started phase_state_change poke poke_mem 
syn keyword uvmMethod poke_reg pop_active_object pop_back pop_element pop_front post_body 
syn keyword uvmMethod post_configure_phase post_do post_main_phase post_predict post_randomize 
syn keyword uvmMethod post_read post_reset_phase post_run_test post_shutdown_phase post_start 
syn keyword uvmMethod post_trigger post_write pre_abort pre_body pre_configure_phase pre_do 
syn keyword uvmMethod pre_main_phase pre_predict pre_randomize pre_read pre_reset_phase 
syn keyword uvmMethod pre_run_test pre_shutdown_phase pre_start pre_trigger pre_write predict 
syn keyword uvmMethod prev print print_accessors print_array_footer print_array_header 
syn keyword uvmMethod print_array_range print_catcher print_config print_config_settings 
syn keyword uvmMethod print_config_with_audit print_field print_field_int print_generic 
syn keyword uvmMethod print_generic_element print_int print_msg print_msg_object print_object 
syn keyword uvmMethod print_object_header print_override_info print_real print_resources 
syn keyword uvmMethod print_string print_time print_topology process_all_report_catchers 
syn keyword uvmMethod process_report_catcher process_report_message push_active_object 
syn keyword uvmMethod push_back push_element push_front push_get_record put put_base_response 
syn keyword uvmMethod put_bits put_bytes put_ints put_response qualify raise_objection 
syn keyword uvmMethod raised read read_by_name read_by_type read_func read_mem read_mem_by_name 
syn keyword uvmMethod read_reg read_reg_by_name readmemh reconfigure record record_error_tr 
syn keyword uvmMethod record_event_tr record_field record_field_int record_field_real record_generic 
syn keyword uvmMethod record_object record_read_access record_string record_time record_write_access 
syn keyword uvmMethod reg2bus register register_super_type release_all_regions release_region 
syn keyword uvmMethod remove remove_sequence remove_sequence_from_queues report report_header 
syn keyword uvmMethod report_phase report_summarize request_region reseed reserve_region 
syn keyword uvmMethod reset reset_phase reset_quit_count reset_severity_counts resolve_bindings 
syn keyword uvmMethod response_handler resume run run_phase run_test sample sample_values 
syn keyword uvmMethod select_sequence send_request set set_abstime set_access set_action 
syn keyword uvmMethod set_address set_anonymous set_arbitration set_attribute set_auto_predict 
syn keyword uvmMethod set_auto_reset set_automatic_phase_objection set_backdoor set_base_addr 
syn keyword uvmMethod set_begin_elements set_byte_enable set_byte_enable_length set_check_on_read 
syn keyword uvmMethod set_check_type set_command set_compare set_component_visitor set_context 
syn keyword uvmMethod set_coverage set_data set_data_length set_default set_default_comparer 
syn keyword uvmMethod set_default_copier set_default_data set_default_door set_default_file 
syn keyword uvmMethod set_default_hdl_path set_default_index set_default_map set_default_max_ready_to_end_iterations 
syn keyword uvmMethod set_default_packer set_default_precedence set_default_printer set_default_radix 
syn keyword uvmMethod set_default_tr_database set_depth set_dmi_allowed set_domain set_drain_time 
syn keyword uvmMethod set_element_name set_element_size set_element_type_name set_element_value 
syn keyword uvmMethod set_end_elements set_extension set_factory set_file set_file_name 
syn keyword uvmMethod set_filename set_finish_on_completion set_frontdoor set_hdl_path_root 
syn keyword uvmMethod set_heartbeat set_id set_id_action set_id_count set_id_enabled set_id_file 
syn keyword uvmMethod set_id_info set_id_verbosity set_if set_indent set_initiator set_inst_alias 
syn keyword uvmMethod set_inst_override set_inst_override_by_name set_inst_override_by_type 
syn keyword uvmMethod set_int_local set_item_context set_jump_phase set_lhs set_line set_line_prefix 
syn keyword uvmMethod set_local set_lock set_max_depth set_max_quit_count set_max_ready_to_end_iterations 
syn keyword uvmMethod set_max_zero_time_wait_relevant_count set_message set_message_database 
syn keyword uvmMethod set_mode set_name set_name_enabled set_name_override set_num_last_reqs 
syn keyword uvmMethod set_num_last_rsps set_object_local set_offset set_override set_override_name 
syn keyword uvmMethod set_override_type set_packed_bits set_packed_bytes set_packed_ints 
syn keyword uvmMethod set_packed_longints set_packed_size set_parent set_parent_sequence 
syn keyword uvmMethod set_phase_imp set_phase_max_ready_to_end set_priority set_priority_name 
syn keyword uvmMethod set_priority_queue set_priority_type set_propagate_mode set_quit_count 
syn keyword uvmMethod set_radix_enabled set_radix_string set_randomize_enabled set_read 
syn keyword uvmMethod set_read_only set_read_write set_recursion_policy set_report_default_file 
syn keyword uvmMethod set_report_default_file_hier set_report_handler set_report_id_action 
syn keyword uvmMethod set_report_id_action_hier set_report_id_file set_report_id_file_hier 
syn keyword uvmMethod set_report_id_verbosity set_report_id_verbosity_hier set_report_message 
syn keyword uvmMethod set_report_object set_report_server set_report_severity_action set_report_severity_action_hier 
syn keyword uvmMethod set_report_severity_file set_report_severity_file_hier set_report_severity_id_action 
syn keyword uvmMethod set_report_severity_id_action_hier set_report_severity_id_file set_report_severity_id_file_hier 
syn keyword uvmMethod set_report_severity_id_override set_report_severity_id_verbosity 
syn keyword uvmMethod set_report_severity_id_verbosity_hier set_report_severity_override 
syn keyword uvmMethod set_report_verbosity_level set_report_verbosity_level_hier set_reset 
syn keyword uvmMethod set_resource_pool set_resource_pool_default_precedence set_response_queue_depth 
syn keyword uvmMethod set_response_queue_error_report_disabled set_response_queue_error_report_enabled 
syn keyword uvmMethod set_response_status set_result set_rhs set_root_enabled set_scope 
syn keyword uvmMethod set_separators set_sequence_id set_sequencer set_server set_severity 
syn keyword uvmMethod set_severity_action set_severity_count set_severity_file set_severity_id_action 
syn keyword uvmMethod set_severity_id_file set_severity_id_override set_severity_id_verbosity 
syn keyword uvmMethod set_severity_override set_show_max set_size_enabled set_starting_phase 
syn keyword uvmMethod set_streaming_width set_string_local set_submap_offset set_threshold 
syn keyword uvmMethod set_time_resolution set_timeout set_tr_database set_transaction_id 
syn keyword uvmMethod set_transaction_order_policy set_type_alias set_type_name_enabled 
syn keyword uvmMethod set_type_override set_type_override_by_name set_type_override_by_type 
syn keyword uvmMethod set_use_sequence_info set_uvm_seeding set_value set_verbosity set_verbosity_level 
syn keyword uvmMethod set_volatility set_write shutdown_phase size sort_by_precedence spell_check 
syn keyword uvmMethod sprint start start_item start_of_simulation start_of_simulation_phase 
syn keyword uvmMethod start_phase_sequence start_update_thread stop stop_phase_sequence 
syn keyword uvmMethod stop_sequences summarize suspend sync to_m_res trace trace_mode transport 
syn keyword uvmMethod traverse trigger try_get try_next_item try_peek try_put try_set turn_off_auditing 
syn keyword uvmMethod turn_off_tracing turn_on_auditing turn_on_tracing type_name ungrab 
syn keyword uvmMethod unlock unlock_model unpack unpack_bits unpack_bytes unpack_field 
syn keyword uvmMethod unpack_field_int unpack_ints unpack_longints unpack_object unpack_object_ext 
syn keyword uvmMethod unpack_real unpack_string unpack_time unregister unsync update update_reg 
syn keyword uvmMethod use_automatic_config use_record_attribute use_response_handler used 
syn keyword uvmMethod user_hook_enabled user_priority_arbitration uvm_bits_to_string uvm_bitstream_to_string 
syn keyword uvmMethod uvm_create_random_seed uvm_get_array_index_int uvm_get_array_index_string 
syn keyword uvmMethod uvm_get_report_object uvm_has_wildcard uvm_hdl_concat2string uvm_init 
syn keyword uvmMethod uvm_instance_scope uvm_integral_to_string uvm_is_array uvm_is_match 
syn keyword uvmMethod uvm_leaf_scope uvm_object_value_str uvm_oneway_hash uvm_process_report_message 
syn keyword uvmMethod uvm_radix_to_string uvm_report uvm_report_enabled uvm_report_error 
syn keyword uvmMethod uvm_report_fatal uvm_report_info uvm_report_warning uvm_revision_string 
syn keyword uvmMethod uvm_split_string uvm_string_to_action uvm_string_to_bits uvm_string_to_severity 
syn keyword uvmMethod uvm_vector_to_string visit wait_for wait_for_change wait_for_grant 
syn keyword uvmMethod wait_for_item_done wait_for_lock wait_for_relevant wait_for_self_and_siblings_to_drop 
syn keyword uvmMethod wait_for_sequence_state wait_for_sequences wait_for_state wait_for_total_count 
syn keyword uvmMethod wait_modified wait_off wait_on wait_ptrigger wait_ptrigger_data wait_trigger 
syn keyword uvmMethod wait_trigger_data wait_until_not_empty write write_attribute write_attribute_int 
syn keyword uvmMethod write_by_name write_by_type write_mem write_mem_by_name write_reg 
"}}}
" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_verilog_syn_inits")
   if version < 508
      let did_verilog_syn_inits = 1
      command -nargs=+ HiLink hi link <args>
   else
      command -nargs=+ HiLink hi def link <args>
   endif

   " The default highlighting.
   HiLink verilogMethod          Function
   HiLink verilogTypeDef         TypeDef
   HiLink verilogAssertion       Include

   HiLink uvmClass               Type
   HiLink uvmTypeDef             Type
   HiLink uvmMethod              Function
   HiLink uvmMethodGlobal        Function
   HiLink uvmDeprecated          Error
   HiLink uvmDeprecatedClass     Error
   HiLink uvmDeprecatedMethod    Error
   HiLink uvmCompatibility       Underlined

   delcommand HiLink
endif

let b:current_syntax = "verilog_systemverilog"

" vim: ts=8

