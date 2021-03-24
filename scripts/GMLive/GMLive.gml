// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project when publishing the source code!
// Generated at 2020-12-18 02:21:44 (9098ms) for v2.3+
globalvar mq_gml_std_Date;mq_gml_std_Date=[undefined,undefined];
globalvar mq_gml_builder;mq_gml_builder=[undefined,undefined,undefined,0,0,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,0,undefined];
globalvar mq_gml_program;mq_gml_program=[undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined];
globalvar mq_gml_enum;mq_gml_enum=[undefined,undefined,undefined,undefined,undefined,undefined];
globalvar mq_gml_enum_ctr;mq_gml_enum_ctr=[undefined,undefined,undefined,undefined,undefined];
globalvar mq_gml_macro;mq_gml_macro=[undefined,undefined,undefined,undefined,undefined];
globalvar mq_gml_pos;mq_gml_pos=[undefined,undefined,0,0,undefined];
globalvar mq_gml_script;mq_gml_script=[undefined,undefined,undefined,0,undefined,undefined,undefined,0,0,undefined,undefined];
globalvar mq_gml_source;mq_gml_source=[undefined,undefined,undefined,undefined,0,undefined,undefined,0,undefined];
globalvar mq_gml_std_haxe_Exception;mq_gml_std_haxe_Exception=[undefined,undefined];
globalvar mq_haxe_ds_basic_map;mq_haxe_ds_basic_map=[undefined,undefined,0,undefined];
globalvar mq_haxe_ds_string_map;mq_haxe_ds_string_map=[undefined,undefined,0,undefined];
globalvar mq_gml_thread_scope;mq_gml_thread_scope=[undefined,undefined,0,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined];
globalvar mq_gml_with_scope;mq_gml_with_scope=[undefined,0,0,undefined,undefined,undefined];
globalvar gml_std_haxe_type_markerValue;if(live_enabled)gml_std_haxe_type_markerValue=[];
globalvar mt_gml_std_Date;if(live_enabled)mt_gml_std_Date=new gml_std_haxe_class(7,"gml_std_Date");
globalvar mt_gml_builder;if(live_enabled)mt_gml_builder=new gml_std_haxe_class(8,"gml_builder");
globalvar mt_gml_program;if(live_enabled)mt_gml_program=new gml_std_haxe_class(9,"gml_program");
globalvar mt_gml_enum;if(live_enabled)mt_gml_enum=new gml_std_haxe_class(10,"gml_enum");
globalvar mt_gml_enum_ctr;if(live_enabled)mt_gml_enum_ctr=new gml_std_haxe_class(11,"gml_enum_ctr");
globalvar mt_gml_macro;if(live_enabled)mt_gml_macro=new gml_std_haxe_class(12,"gml_macro");
globalvar mt_gml_node;if(live_enabled)mt_gml_node=new gml_std_haxe_enum(13,"gml_node",["undefined","number","cstring","enum_ctr","array_decl","object_decl","ensure_array","ident","self","other","global_ref","script","native_script","const","arg_const","arg_index","arg_count","call","call_script","call_script_at","call_script_id","call_script_with_array","call_field","call_func","call_func_at","construct","func_literal","prefix","postfix","un_op","bin_op","set_op","to_bool","from_bool","in","local","local_set","local_aop","global","global_set","global_aop","field","field_set","field_aop","env","env_set","env_aop","env_fd","env_fd_set","env_fd_aop","env1d","env1d_set","env1d_aop","alarm","alarm_set","alarm_aop","index","index_set","index_aop","index_prefix","index_postfix","index2d","index2d_set","index2d_aop","index2d_prefix","index2d_postfix","raw_id","raw_id_set","raw_id_aop","raw_id_prefix","raw_id_postfix","raw_id2d","raw_id2d_set","raw_id2d_aop","raw_id2d_prefix","raw_id2d_postfix","ds_list","ds_list_set","ds_list_aop","ds_list_prefix","ds_list_postfix","ds_map","ds_map_set","ds_map_aop","ds_map_prefix","ds_map_postfix","ds_grid","ds_grid_set","ds_grid_aop","ds_grid_prefix","ds_grid_postfix","var_decl","block","if_then","ternary","switch","wait","fork","while","do_until","do_while","repeat","for","with","once","return","exit","break","continue","debugger","try_catch","throw","comment_line","comment_line_pre","comment_line_post","comment_line_sep","comment_block","comment_block_pre","comment_block_post"]);
globalvar mt_gml_pos;if(live_enabled)mt_gml_pos=new gml_std_haxe_class(14,"gml_pos");
globalvar mt_gml_script;if(live_enabled)mt_gml_script=new gml_std_haxe_class(15,"gml_script");
globalvar mt_gml_source;if(live_enabled)mt_gml_source=new gml_std_haxe_class(16,"gml_source");
globalvar mt_gml_token;if(live_enabled)mt_gml_token=new gml_std_haxe_enum(17,"gml_token",["header","macro","hash","semico","comma","period","colon","qmark","at_sign","keyword","ident","undefined","number","cstring","un_op","adjfix","bin_op","set_op","par_open","par_close","sqb_open","sqb_close","cub_open","cub_close","arg_const"]);
globalvar mt_gml_std_haxe_class;if(live_enabled)mt_gml_std_haxe_class=new gml_std_haxe_class(-1,"gml_std_haxe_class");
globalvar mt_gml_std_haxe_enum;if(live_enabled)mt_gml_std_haxe_enum=new gml_std_haxe_class(-1,"gml_std_haxe_enum");
globalvar mt_gml_std_haxe_Exception;if(live_enabled)mt_gml_std_haxe_Exception=new gml_std_haxe_class(18,"gml_std_haxe_Exception");
globalvar mt_haxe_ds_basic_map;if(live_enabled)mt_haxe_ds_basic_map=new gml_std_haxe_class(19,"haxe_ds_basic_map");
globalvar mt_haxe_ds_string_map;if(live_enabled)mt_haxe_ds_string_map=new gml_std_haxe_class(20,"haxe_ds_string_map");
if(live_enabled)mt_haxe_ds_string_map.h_superClass=mt_haxe_ds_basic_map;
globalvar mt_gml_action;if(live_enabled)mt_gml_action=new gml_std_haxe_enum(22,"gml_action",["discard","dup","dup2x","dup_in","undefined","number","cstring","array_decl","object_decl","const","self","other","local","local_set","local_aop","global","global_set","global_aop","field","field_set","field_aop","index","index_set","index_aop","index2d","index2d_set","index2d_aop","env","env_set","env_aop","env1d","env1d_set","env1d_aop","ds_aop","arg_const","arg_const_set","arg_const_aop","arg_index","arg_index_set","arg_index_aop","arg_count","add_int","equ_op","neq_op","concat","bin_op","un_op","in","call_script","call_script_id","call_script_with_array","call_func","call_field","construct","func_literal","jump","jump_if","jump_unless","bool_and","bool_or","switch","switch_case","repeat_jump","repeat_pre","with_pre","with_next","with_post","break","continue","return","result","try","catch","finally","throw","wait","fork","ensure_array_local","ensure_array_global","ensure_array_field","alarm","alarm_set","alarm_aop"]);
globalvar mt_gml_thread_scope;if(live_enabled)mt_gml_thread_scope=new gml_std_haxe_class(23,"gml_thread_scope");
globalvar mt_gml_with_scope;if(live_enabled)mt_gml_with_scope=new gml_std_haxe_class(24,"gml_with_scope");
globalvar mt_gml_thread_proc_result;if(live_enabled)mt_gml_thread_proc_result=new gml_std_haxe_enum(25,"gml_thread_proc_result");
enum gml_thread_status{none,running,waiting,done,error}

if(live_enabled)
function gml_std_Date_create(l_year,l_month,l_day,l_hour,l_min1,l_sec){
	var this=[mt_gml_std_Date];
	array_copy(this,1,mq_gml_std_Date,1,1);
	this[@1]=date_create_datetime(l_year,l_month+1,l_day,l_hour,l_min1,l_sec);
	return this;
}

if(live_enabled)
function gml_std_Date_now(){
	var l_d=gml_std_Date_create(2000,0,1,0,0,0);
	l_d[@1]=date_current_datetime();
	return l_d;
}

if(live_enabled)
function gml_std_Date_getTime(this){
	return (this[1]-25569)*86400000;
}

if(live_enabled)
function gml_builder_create(l_pg,l_src){
	var this=[mt_gml_builder];
	array_copy(this,1,mq_gml_builder,1,15);
	this[@14]=0;
	this[@13]=undefined;
	this[@12]=undefined;
	this[@9]=undefined;
	this[@8]=[];
	this[@7]=[];
	this[@6]=[];
	this[@5]=[];
	this[@3]=0;
	this[@15]=l_pg;
	this[@2]=l_src;
	if(l_src[6]!=undefined){
		this[@1]=l_src[6];
		gml_parser_tokens_found=l_src[7];
	} else this[@1]=gml_parser_run(l_src);
	if(this[1]!=undefined){
		this[@4]=gml_parser_tokens_found;
		gml_builder_build_loop(this,l_src[3]);
	} else {
		this[@9]=gml_parser_error_text;
		this[@10]=gml_parser_error_pos;
	}
	return this;
}

if(live_enabled)
function gml_builder_error_at(this,l_text,l_pos){
	this[@9]=gml_pos_to_string(l_pos)+": "+l_text;
	this[@10]=l_pos;
	return true;
}

if(live_enabled)
function gml_builder_error(this,l_text,l_tk){
	return gml_builder_error_at(this,l_text,l_tk[0]);
}

if(live_enabled)
function gml_builder_expect(this,l_text,l_tk){
	return gml_builder_error(this,"Expected "+l_text+", got "+gml_std_Type_enumConstructor(l_tk),l_tk);
}

if(live_enabled)
function gml_builder_expect_node(this,l_text,l_node){
	return gml_builder_error_at(this,"Expected "+l_text+", got "+gml_std_Type_enumConstructor(l_node),gml_std_haxe_enum_tools_getParameter(l_node,0));
}

if(live_enabled)
function gml_builder_build_ops(this,l_firstPos,l_firstOp){
	this[@3]+=1;
	var l_nodes=ds_list_create();
	ds_list_add(l_nodes,this[11]);
	var l_ops=ds_list_create();
	ds_list_add(l_ops,l_firstOp);
	var l_locs=ds_list_create();
	ds_list_add(l_locs,l_firstPos);
	var l_proc=true;
	var l_i;
	while(l_proc&&this[3]<this[4]){
		if(gml_builder_build_expr(this,1)){
			ds_list_destroy(l_nodes);
			ds_list_destroy(l_ops);
			ds_list_destroy(l_locs);
			return true;
		}
		ds_list_add(l_nodes,this[11]);
		if(this[3]<this[4]){
			var l__g=this[1][this[3]];
			switch(l__g[0]){
				case 16:
					this[@3]+=1;
					ds_list_add(l_locs,l__g[1]);
					ds_list_add(l_ops,l__g[2]);
					break;
				case 17:
					if(l__g[2]==-1){
						this[@3]+=1;
						ds_list_add(l_locs,l__g[1]);
						ds_list_add(l_ops,64);
					} else l_proc=false;
					break;
				default:l_proc=false;
			}
		}
	}
	var l_pmin=7;
	var l_pmax=0;
	var l_n=ds_list_size(l_ops);
	for(l_i=0;l_i<l_n;l_i++){
		var l_pcur=gml_op_get_priority(l_ops[|l_i]);
		if(l_pcur<l_pmin)l_pmin=l_pcur;
		if(l_pcur>l_pmax)l_pmax=l_pcur;
	}
	while(l_pmin<=l_pmax){
		for(l_i=0;l_i<l_n;l_i++){
			if(gml_op_get_priority(l_ops[|l_i])==l_pmin){
				l_nodes[|l_i]=[30,l_locs[|l_i],l_ops[|l_i],l_nodes[|l_i],l_nodes[|l_i+1]];
				ds_list_delete(l_nodes,l_i+1);
				ds_list_delete(l_ops,l_i);
				ds_list_delete(l_locs,l_i);
				l_n--;
				l_i--;
			}
		}
		l_pmin++;
	}
	this[@11]=l_nodes[|0];
	ds_list_destroy(l_nodes);
	ds_list_destroy(l_ops);
	ds_list_destroy(l_locs);
	return false;
}

if(live_enabled)
function gml_builder_build_args(this,l_pos,l_sqb){
	var l_args1=[];
	var l_proc=true;
	var l_seenComma=true;
	var l_func=this[11];
	while(l_proc&&this[3]<this[4]){
		var l_tk=this[1][this[3]];
		switch(l_tk[0]){
			case 19:
				if(l_sqb){
					return gml_builder_error(this,"Unexpected `)`",l_tk);
				} else {
					l_proc=false;
					this[@3]+=1;
				}
				break;
			case 21:
				if(l_sqb){
					l_proc=false;
					this[@3]+=1;
				} else return gml_builder_error(this,"Unexpected `]`",l_tk);
				break;
			case 4:
				if(l_seenComma){
					return gml_builder_error(this,"Unexpected comma",l_tk);
				} else {
					l_seenComma=true;
					this[@3]+=1;
				}
				break;
			default:
				if(l_seenComma){
					l_seenComma=false;
					if(gml_builder_build_expr(this,0))return true;
					gml_std_gml_internal_ArrayImpl_push(l_args1,this[11]);
				} else return gml_builder_expect(this,"a comma or closing token.",l_tk);
		}
	}
	if(l_proc)return gml_builder_error_at(this,"Unclosed list",l_pos);
	if(l_sqb)this[@11]=[4,l_pos,l_args1]; else this[@11]=[17,l_pos,l_func,l_args1];
	return false;
}

if(live_enabled)
function gml_builder_build_expr(this,l_flags){
	if(this[3]>=this[4])return gml_builder_error_at(this,"Expected an expression",gml_source_get_eof(this[2]));
	var l_proc,l_sep,l_i,l_n,l_s,l_tk;
	var l_tk0=this[1][this[@3]++];
	var l_node,l_node2,l_nodes;
	switch(l_tk0[0]){
		case 11:this[@11]=[0,l_tk0[1]];break;
		case 12:this[@11]=[1,l_tk0[1],l_tk0[2],l_tk0[3]];break;
		case 13:this[@11]=[2,l_tk0[1],l_tk0[2]];break;
		case 20:
			l_proc=true;
			l_sep=true;
			gml_builder_build_args(this,l_tk0[1],true);
			break;
		case 10:
			var l_s1=l_tk0[2];
			switch(l_s1){
				case "self":this[@11]=[8,l_tk0[1]];break;
				case "other":this[@11]=[9,l_tk0[1]];break;
				default:
					if(haxe_ds_basic_map_get(gml_asset_index,l_s1)!=undefined){
						l_i=haxe_ds_basic_map_get(gml_asset_index,l_s1);
						this[@11]=[1,l_tk0[1],l_i,undefined];
					} else {
						var l_m=haxe_ds_basic_map_get(this[15][6],l_s1);
						if(l_m!=undefined&&l_m[3]){
							this[@11]=gml_node_clone(l_m[2]);
						} else {
							l_i=gml_std_gml_internal_ArrayImpl_indexOf(this[7],l_s1);
							if(l_i>=0){
								l_m=this[8][l_i];
								if(l_m[3])this[@11]=gml_node_clone(l_m[2]); else this[@11]=[7,l_tk0[1],l_s1];
							} else this[@11]=[7,l_tk0[1],l_s1];
						}
					}
			}
			break;
		case 24:this[@11]=[14,l_tk0[1],l_tk0[2]];break;
		case 14:
			if(gml_builder_build_expr(this,1))return true;
			var l__g=this[11];
			if(l__g[0]==1){
				var l_f=l__g[2];
				switch(l_tk0[2]){
					case 2:l_f=~(l_f|0);break;
					case 0:l_f=-l_f;break;
					case 1:l_f=(l_f>0.5?0:1);break;
				}
				this[@11]=[1,l_tk0[1],l_f,undefined];
			} else this[@11]=[29,l_tk0[1],this[11],l_tk0[2]];
			break;
		case 15:
			if(gml_builder_build_expr(this,1))return true;
			this[@11]=[27,l_tk0[1],this[11],l_tk0[2]];
			break;
		case 16:
			var l__g=l_tk0[1];
			switch(l_tk0[2]){
				case 16:if(gml_builder_build_expr(this,1))return true;break;
				case 17:
					var l_d=l__g;
					if(gml_builder_build_expr(this,1))return true;
					var l__g=this[11];
					if(l__g[0]==1)this[@11]=[1,l_d,-l__g[2],undefined]; else this[@11]=[29,l_d,this[11],0];
					break;
				default:if((l_flags&4)!=0)return gml_builder_expect(this,"a statement",l_tk0); else return gml_builder_expect(this,"a value",l_tk0);
			}
			break;
		case 18:
			if(gml_builder_build_expr(this,0))return true;
			if(this[3]>=this[4])return gml_builder_error(this,"Unclosed parenthesis",l_tk0);
			if(this[3]>=this[4]){
				return gml_builder_error_at(this,"Expected a closing parenthesis",gml_source_get_eof(this[2]));
			} else if(this[1][this[3]][0]==19){
				this[@3]+=1;
			} else return gml_builder_error(this,"Expected a closing parenthesis",this[1][this[3]]);
			break;
		case 22:
			var l_keys=[];
			l_nodes=[];
			l_proc=true;
			var l__g=this[1][this[3]];
			var l_tmp;
			if(l__g[0]==23)l_tmp=true; else l_tmp=false;
			if(l_tmp){
				this[@3]+=1;
			} else while(l_proc&&this[3]<this[4]){
				var l__g=this[1][this[3]];
				switch(l__g[0]){
					case 13:
						l_s=l__g[2];
						gml_std_gml_internal_ArrayImpl_push(l_keys,l_s);
						this[@3]+=1;
						if(this[3]>=this[4]){
							return gml_builder_error_at(this,"Expected a `:` in object declaration",gml_source_get_eof(this[2]));
						} else if(this[1][this[3]][0]==6){
							this[@3]+=1;
						} else return gml_builder_error(this,"Expected a `:` in object declaration",this[1][this[3]]);
						if(gml_builder_build_expr(this,0))return true;
						gml_std_gml_internal_ArrayImpl_push(l_nodes,this[11]);
						switch(this[1][this[3]][0]){
							case 4:
								this[@3]+=1;
								if(this[1][this[3]][0]==23){
									this[@3]+=1;
									l_proc=false;
								}
								break;
							case 23:
								this[@3]+=1;
								l_proc=false;
								break;
							default:return gml_builder_expect(this,"a `,` or a `}` in object declaration",this[1][this[3]]);
						}
						break;
					case 10:
						l_s=l__g[2];
						gml_std_gml_internal_ArrayImpl_push(l_keys,l_s);
						this[@3]+=1;
						if(this[3]>=this[4]){
							return gml_builder_error_at(this,"Expected a `:` in object declaration",gml_source_get_eof(this[2]));
						} else if(this[1][this[3]][0]==6){
							this[@3]+=1;
						} else return gml_builder_error(this,"Expected a `:` in object declaration",this[1][this[3]]);
						if(gml_builder_build_expr(this,0))return true;
						gml_std_gml_internal_ArrayImpl_push(l_nodes,this[11]);
						switch(this[1][this[3]][0]){
							case 4:
								this[@3]+=1;
								if(this[1][this[3]][0]==23){
									this[@3]+=1;
									l_proc=false;
								}
								break;
							case 23:
								this[@3]+=1;
								l_proc=false;
								break;
							default:return gml_builder_expect(this,"a `,` or a `}` in object declaration",this[1][this[3]]);
						}
						break;
					default:return gml_builder_expect(this,"a key-value pair or a `}` in object declaration",this[1][this[3]]);
				}
			}
			this[@11]=[5,l_tk0[1],l_keys,l_nodes];
			break;
		case 0:if((l_flags&4)!=0)return gml_builder_error(this,"Expected a statement, got a header (did you miss a closing bracket?)",l_tk0); else return gml_builder_error(this,"Expected an expression, got a header (did you miss a closing parenthesis?)",l_tk0);
		case 9:
			switch(l_tk0[2]){
				case 0:
					var l_d=l_tk0[1];
					if(this[3]>=this[4]){
						this[@11]=[10,l_d];
					} else if(this[1][this[3]][0]==5){
						l_tk=this[1][this[@3]++];
						if(this[3]>=this[4]){
							return gml_builder_expect(this,"a field name",l_tk);
						} else {
							var l__g1=this[1][this[3]];
							if(l__g1[0]==10){
								this[@3]+=1;
								this[@11]=[38,l__g1[1],l__g1[2]];
							} else return gml_builder_expect(this,"a field name",this[1][this[3]]);
						}
					} else this[@11]=[10,l_d];
					break;
				case 26:
					if(this[3]>=this[4]){
						return gml_builder_error_at(this,"Expected an opening square bracket",gml_source_get_eof(this[2]));
					} else if(this[1][this[3]][0]==20){
						this[@3]+=1;
					} else return gml_builder_error(this,"Expected an opening square bracket",this[1][this[3]]);
					if(gml_builder_build_expr(this,0))return true;
					if(this[3]>=this[4]){
						return gml_builder_error_at(this,"Expected a closing square bracket",gml_source_get_eof(this[2]));
					} else if(this[1][this[3]][0]==21){
						this[@3]+=1;
					} else return gml_builder_error(this,"Expected a closing square bracket",this[1][this[3]]);
					this[@11]=[15,l_tk0[1],this[11]];
					break;
				case 27:this[@11]=[16,l_tk0[1]];break;
				case 25:
					if(gml_builder_build_expr(this,l_flags))return true;
					var l__g1=this[11];
					if(l__g1[0]==17)this[@11]=[25,l__g1[1],l__g1[2],l__g1[3]]; else return gml_builder_expect(this,"a callable value after `new`",l_tk0);
					break;
				case 24:
					var l_d=l_tk0[1];
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected a function name or `(`",gml_source_get_eof(this[2]));
					var l_oldName=this[12];
					l_i=0;
					while(true){
						l_s=l_oldName+"+"+string(++l_i);
						l_n=array_length(this[5]);
						while(--l_n>=0){
							if(this[5][l_n][1]==l_s)break;
						}
						if(!(l_n>0))break;
					}
					var l_scrName;
					var l__g1=this[1][this[3]];
					if(l__g1[0]==10){
						var l__name=l__g1[2];
						this[@3]+=1;
						l_scrName=l__name;
					} else l_scrName=undefined;
					if(this[3]>=this[4]){
						return gml_builder_error_at(this,"Expected an opening `(`",gml_source_get_eof(this[2]));
					} else if(this[1][this[3]][0]==18){
						this[@3]+=1;
					} else return gml_builder_error(this,"Expected an opening `(`",this[1][this[3]]);
					if(gml_builder_build_script_args(this))return true;
					if(this[3]<this[4]){
						l_tk=this[1][this[3]];
						var l_tmp;
						if(l_tk[0]==10)l_tmp=l_tk[2]=="constructor"; else l_tmp=false;
						if(l_tmp)this[@3]+=1;
					}
					var l_scr=gml_script_create(this[2],l_s,l_d);
					l_scr[@9]=this[13];
					this[@13]=undefined;
					l_scr[@8]=this[14];
					gml_std_gml_internal_ArrayImpl_push(this[5],l_scr);
					this[@12]=l_s;
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected function body",gml_source_get_eof(this[2]));
					l_tk=this[1][this[3]];
					if(l_tk[0]==22)var l__g1=l_tk[1]; else return gml_builder_expect(this,"a `{`",this[1][this[3]]);
					gml_builder_build_line(this);
					l_scr[@4]=this[11];
					this[@11]=[26,l_d,l_s];
					this[@12]=l_oldName;
					break;
				default:if((l_flags&4)!=0)return gml_builder_expect(this,"a statement",l_tk0); else return gml_builder_expect(this,"a value",l_tk0);
			}
			break;
		default:if((l_flags&4)!=0)return gml_builder_expect(this,"a statement",l_tk0); else return gml_builder_expect(this,"a value",l_tk0);
	}
	l_proc=true;
	while(l_proc&&this[3]<this[4]){
		l_tk=this[1][this[3]];
		switch(l_tk[0]){
			case 15:
				if((l_flags&2)==0){
					this[@3]+=1;
					this[@11]=[28,l_tk[1],this[11],l_tk[2]];
					l_flags|=2;
				} else if(l_tk[2]){
					return gml_builder_error_at(this,"Unexpected `++`",l_tk[1]);
				} else return gml_builder_error_at(this,"Unexpected `--`",l_tk[1]);
				break;
			case 5:
				if((l_flags&2)==0){
					this[@3]+=1;
					var l__g=this[1][this[3]];
					if(l__g[0]==10){
						l_s=l__g[2];
						this[@3]+=1;
						this[@11]=[41,l_tk[1],this[11],l_s];
					} else return gml_builder_error(this,"Expected a field name",this[1][this[3]]);
				} else return gml_builder_error(this,"Unexpected period",this[1][this[3]]);
				break;
			case 18:
				if((l_flags&2)==0){
					this[@3]+=1;
					if(gml_builder_build_args(this,l_tk[1],false))return true;
				} else return gml_builder_error_at(this,"Unexpected `(`",l_tk[1]);
				break;
			case 20:
				var l_d4=l_tk[1];
				if((l_flags&2)==0){
					this[@3]+=1;
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected an index",gml_source_get_eof(this[2]));
					l_node=this[11];
					var l__g6=this[1][this[3]];
					switch(l__g6[0]){
						case 16:
							if(l__g6[2]==48){
								this[@3]+=1;
								if(gml_builder_build_expr(this,0))return true;
								if(this[3]>=this[4]){
									return gml_builder_error_at(this,"Expected a closing bracket",gml_source_get_eof(this[2]));
								} else if(this[1][this[3]][0]==21){
									this[@3]+=1;
								} else return gml_builder_error(this,"Expected a closing bracket",this[1][this[3]]);
								this[@11]=[76,l_d4,l_node,this[11]];
							} else l_proc=false;
							break;
						case 7:
							this[@3]+=1;
							if(gml_builder_build_expr(this,0))return true;
							if(this[3]>=this[4]){
								return gml_builder_error_at(this,"Expected a closing bracket",gml_source_get_eof(this[2]));
							} else if(this[1][this[3]][0]==21){
								this[@3]+=1;
							} else return gml_builder_error(this,"Expected a closing bracket",this[1][this[3]]);
							this[@11]=[81,l_d4,l_node,this[11]];
							break;
						case 2:
							this[@3]+=1;
							if(gml_builder_build_expr(this,0))return true;
							l_node2=this[11];
							if(this[3]>=this[4]){
								return gml_builder_error_at(this,"Expected a comma",gml_source_get_eof(this[2]));
							} else if(this[1][this[3]][0]==4){
								this[@3]+=1;
							} else return gml_builder_error(this,"Expected a comma",this[1][this[3]]);
							if(gml_builder_build_expr(this,0))return true;
							if(this[3]>=this[4]){
								return gml_builder_error_at(this,"Expected a closing bracket",gml_source_get_eof(this[2]));
							} else if(this[1][this[3]][0]==21){
								this[@3]+=1;
							} else return gml_builder_error(this,"Expected a closing bracket",this[1][this[3]]);
							this[@11]=[86,l_d4,l_node,l_node2,this[11]];
							break;
						case 8:
							this[@3]+=1;
							if(gml_builder_build_expr(this,0))return true;
							if(this[3]>=this[4])return gml_builder_error_at(this,"Expected comma or a closing bracket",gml_source_get_eof(this[2]));
							switch(this[1][this[3]][0]){
								case 4:
									this[@3]+=1;
									l_node2=this[11];
									if(gml_builder_build_expr(this,0))return true;
									if(this[3]>=this[4]){
										return gml_builder_error_at(this,"Expected a closing bracket",gml_source_get_eof(this[2]));
									} else if(this[1][this[3]][0]==21){
										this[@3]+=1;
									} else return gml_builder_error(this,"Expected a closing bracket",this[1][this[3]]);
									this[@11]=[71,l_d4,l_node,l_node2,this[11]];
									break;
								case 21:
									this[@3]+=1;
									this[@11]=[66,l_d4,l_node,this[11]];
									break;
								default:gml_builder_expect(this,"comma or a closing bracket",this[1][this[3]]);
							}
							break;
						default:l_proc=false;
					}
					if(!l_proc){
						l_proc=true;
						if(gml_builder_build_expr(this,0))return true;
						if(this[3]>=this[4])return gml_builder_error_at(this,"Expected comma or a closing bracket",gml_source_get_eof(this[2]));
						switch(this[1][this[3]][0]){
							case 4:
								this[@3]+=1;
								l_node2=this[11];
								if(gml_builder_build_expr(this,0))return true;
								if(this[3]>=this[4]){
									return gml_builder_error_at(this,"Expected a closing bracket",gml_source_get_eof(this[2]));
								} else if(this[1][this[3]][0]==21){
									this[@3]+=1;
								} else return gml_builder_error(this,"Expected a closing bracket",this[1][this[3]]);
								this[@11]=[61,l_d4,l_node,l_node2,this[11]];
								break;
							case 21:
								this[@3]+=1;
								this[@11]=[56,l_d4,l_node,this[11]];
								break;
							default:gml_builder_expect(this,"comma or a closing bracket",this[1][this[3]]);
						}
					}
				} else return gml_builder_error_at(this,"Unexpected `[`",l_d4);
				break;
			case 16:
				if((l_flags&1)==0){
					if(gml_builder_build_ops(this,l_tk[1],l_tk[2]))return true;
					l_flags|=2;
				} else l_proc=false;
				break;
			case 17:
				var l__g4=l_tk[2];
				if(l__g4==-1){
					var l_p1=l_tk[1];
					if((l_flags&4)!=0){
						l_node=this[11];
						this[@3]+=1;
						if(gml_builder_build_expr(this,0))return true;
						this[@11]=[31,l_p1,-1,l_node,this[11]];
						l_proc=false;
					} else if((l_flags&1)==0){
						if(gml_builder_build_ops(this,l_p1,64))return true;
						l_flags|=2;
					} else l_proc=false;
				} else {
					var l_p2=l_tk[1];
					var l_o1=l__g4;
					if((l_flags&4)!=0){
						l_node=this[11];
						this[@3]+=1;
						if(gml_builder_build_expr(this,0))return true;
						this[@11]=[31,l_p2,l_o1,l_node,this[11]];
					}
					l_proc=false;
				}
				break;
			case 7:
				if((l_flags&1)==0){
					this[@3]+=1;
					l_node=this[11];
					if(gml_builder_build_expr(this,0))return true;
					l_node2=this[11];
					if(this[3]>=this[4]){
						return gml_builder_error_at(this,"Expected an else-colon",gml_source_get_eof(this[2]));
					} else if(this[1][this[3]][0]==6){
						this[@3]+=1;
					} else return gml_builder_error(this,"Expected an else-colon",this[1][this[3]]);
					if(gml_builder_build_expr(this,0))return true;
					this[@11]=[94,l_tk[1],l_node,l_node2,this[11]];
				} else l_proc=false;
				break;
			default:l_proc=false;
		}
	}
	return false;
}

if(live_enabled)
function gml_builder_build_line(this,l_reqStatement){
	if(l_reqStatement==undefined)l_reqStatement=true;
	if(false)throw argument[0];
	if(this[3]>=this[4])return gml_builder_error_at(this,"Expected a statement",gml_source_get_eof(this[2]));
	var l_tk=this[1][this[@3]++];
	var l_tk2,l_proc,l_sep,l_x,l_x1,l_x2,l_nodes,l_i,l_s,l_d;
	var l_unknown=false;
	switch(l_tk[0]){
		case 9:
			var l__g=l_tk[1];
			switch(l_tk[2]){
				case 1:
					l_d=l__g;
					this[@11]=[92,l_d,[]];
					while(this[3]<this[4]){
						l_tk2=this[1][this[@3]++];
						if(l_tk2[0]==10){
							l_d=l_tk2[1];
							l_s=l_tk2[2];
							l_i=array_length(this[7]);
							this[7][@l_i]=l_s;
							this[8][@l_i]=gml_macro_create(l_s,[38,l_d,l_s],true,false);
							if(this[1][this[3]][0]==4){
								this[@3]+=1;
								continue;
							}
						} else return gml_builder_error(this,"Expected a global variable name.",l_tk2);
						break;
					}
					break;
				case 2:
					var l_d=l__g;
					l_nodes=[];
					l_proc=true;
					while(l_proc&&this[3]<this[4]){
						l_tk2=this[1][this[@3]++];
						switch(l_tk2[0]){
							case 9:if(l_tk2[2]==2)var l_d1=l_tk2[1]; else return gml_builder_expect(this,"a variable name",l_tk2);break;
							case 10:
								if(this[3]>=this[4])return gml_builder_error_at(this,"Expected a variable value",gml_source_get_eof(this[2]));
								l_tk=this[1][this[3]];
								if(l_tk[0]==17){
									if(l_tk[2]==-1){
										this[@3]+=1;
										if(gml_builder_build_expr(this,0))return true;
									} else this[@11]=undefined;
								} else this[@11]=undefined;
								gml_std_gml_internal_ArrayImpl_push(l_nodes,[91,l_tk2[1],l_tk2[2],this[11]]);
								if(this[3]<this[4])switch(this[1][this[3]][0]){
									case 4:this[@3]+=1;break;
									case 3:
										this[@3]+=1;
										l_proc=false;
										break;
									default:l_proc=false;
								}
								break;
							default:return gml_builder_expect(this,"a variable name",l_tk2);
						}
					}
					if(array_length(l_nodes)!=1)this[@11]=[92,l_d,l_nodes]; else this[@11]=l_nodes[0];
					break;
				case 3:
					var l_e;
					var l__g1=this[1][this[3]];
					if(l__g1[0]==10){
						var l_s1=l__g1[2];
						var l_d1=l__g1[1];
						this[@3]+=1;
						l_e=gml_enum_create(l_s1,l_d1);
					} else return gml_builder_error(this,"Expected an enum name",this[1][this[3]]);
					if(this[3]>=this[4]){
						return gml_builder_error_at(this,"Expected enum block",gml_source_get_eof(this[2]));
					} else if(this[1][this[3]][0]==22){
						this[@3]+=1;
					} else return gml_builder_error(this,"Expected enum block",this[1][this[3]]);
					l_proc=true;
					l_sep=true;
					while(this[3]<this[4]&&l_proc){
						var l__g1=this[1][this[3]];
						switch(l__g1[0]){
							case 23:
								this[@3]+=1;
								l_proc=false;
								break;
							case 4:
								if(l_sep){
									return gml_builder_error(this,"Unexpected comma",this[1][this[3]]);
								} else {
									this[@3]+=1;
									l_sep=true;
								}
								break;
							case 10:
								if(l_sep){
									this[@3]+=1;
									var l__g3=this[1][this[3]];
									if(l__g3[0]==17){
										if(l__g3[2]==-1){
											this[@3]+=1;
											if(gml_builder_build_expr(this,0))return true;
										} else this[@11]=undefined;
									} else this[@11]=undefined;
									var l_ec=gml_enum_ctr_create(l__g1[2],l__g1[1],this[11]);
									gml_std_gml_internal_ArrayImpl_push(l_e[3],l_ec);
									haxe_ds_basic_map_set(l_e[4],l_ec[1],l_ec);
									l_sep=false;
								} else return gml_builder_expect(this,"a comma or a closing bracket",this[1][this[3]]);
								break;
							default:return gml_builder_expect(this,"a comma, enum entry, or closing bracket",this[1][this[3]]);
						}
					}
					if(l_proc)return gml_builder_error(this,"Unclosed enum-block",l_tk);
					gml_std_gml_internal_ArrayImpl_push(this[6],l_e);
					this[@11]=[92,l__g,[]];
					break;
				case 4:
					if(gml_builder_build_expr(this,0))return true;
					l_x1=this[11];
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected a then-expression",gml_source_get_eof(this[2]));
					var l__g1=this[1][this[3]];
					if(l__g1[0]==9){
						if(l__g1[2]==5)this[@3]+=1;
					}
					if(gml_builder_build_line(this))return true;
					l_x2=this[11];
					l_i=this[3];
					if(this[3]<this[4]){
						var l__g1=this[1][this[3]];
						if(l__g1[0]==9){
							if(l__g1[2]==6){
								this[@3]+=1;
								if(gml_builder_build_line(this))return true;
								l_x=this[11];
							} else {
								this[@3]=l_i;
								l_x=undefined;
							}
						} else {
							this[@3]=l_i;
							l_x=undefined;
						}
					} else {
						this[@3]=l_i;
						l_x=undefined;
					}
					this[@11]=[93,l__g,l_x1,l_x2,l_x];
					break;
				case 7:
					var l_d=l__g;
					if(gml_builder_build_expr(this,0))return true;
					l_x1=this[11];
					var l_cc=[];
					var l_c=undefined;
					if(this[3]>=this[4]){
						return gml_builder_error_at(this,"Expected switch-block body",gml_source_get_eof(this[2]));
					} else if(this[1][this[3]][0]==22){
						this[@3]+=1;
					} else return gml_builder_error(this,"Expected switch-block body",this[1][this[3]]);
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected switch-block contents",gml_source_get_eof(this[2]));
					var l__g1=this[1][this[3]];
					if(l__g1[0]==9)switch(l__g1[2]){
						case 8:case 9:break;
						default:return gml_builder_expect(this,"`case` or `default`",this[1][this[3]]);
					} else return gml_builder_expect(this,"`case` or `default`",this[1][this[3]]);
					l_proc=true;
					l_x2=undefined;
					l_nodes=undefined;
					var l_pre=[];
					while(this[3]<this[4]&&l_proc){
						var l__g1=this[1][this[3]];
						switch(l__g1[0]){
							case 23:
								this[@3]+=1;
								l_proc=false;
								break;
							case 9:
								switch(l__g1[2]){
									case 8:
										this[@3]+=1;
										if(gml_builder_build_expr(this,0))return true;
										if(this[3]>=this[4]){
											return gml_builder_error_at(this,"Expected a colon",gml_source_get_eof(this[2]));
										} else if(this[1][this[3]][0]==6){
											this[@3]+=1;
										} else return gml_builder_error(this,"Expected a colon",this[1][this[3]]);
										l_nodes=[this[11]];
										while(this[3]<this[4]){
											var l__g5=this[1][this[3]];
											if(l__g5[0]==9){
												if(l__g5[2]==8){
													this[@3]+=1;
													if(gml_builder_build_expr(this,0))return true;
													if(this[3]>=this[4]){
														return gml_builder_error_at(this,"Expected a colon",gml_source_get_eof(this[2]));
													} else if(this[1][this[3]][0]==6){
														this[@3]+=1;
													} else return gml_builder_error(this,"Expected a colon",this[1][this[3]]);
													gml_std_gml_internal_ArrayImpl_push(l_nodes,this[11]);
													continue;
												}
											}
											break;
										}
										l_c=[l_nodes,undefined,l_pre];
										gml_std_gml_internal_ArrayImpl_push(l_cc,l_c);
										l_nodes=[];
										l_pre=[];
										l_c[@1]=[92,l__g1[1],l_nodes];
										break;
									case 9:
										this[@3]+=1;
										if(this[3]>=this[4]){
											return gml_builder_error_at(this,"Expected a colon",gml_source_get_eof(this[2]));
										} else if(this[1][this[3]][0]==6){
											this[@3]+=1;
										} else return gml_builder_error(this,"Expected a colon",this[1][this[3]]);
										l_nodes=[];
										l_x2=[92,l__g1[1],l_nodes];
										break;
									default:
										if(gml_builder_build_line(this))return true;
										gml_std_gml_internal_ArrayImpl_push(l_nodes,this[11]);
								}
								break;
							default:
								if(gml_builder_build_line(this))return true;
								gml_std_gml_internal_ArrayImpl_push(l_nodes,this[11]);
						}
					}
					if(l_proc)return gml_builder_error_at(this,"Unclosed switch-block",l_d);
					this[@11]=[95,l_d,l_x1,l_cc,l_x2];
					break;
				case 14:
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected for-loop header",gml_source_get_eof(this[2]));
					if(this[1][this[3]][0]==18){
						this[@3]+=1;
						l_proc=true;
					} else l_proc=false;
					if(gml_builder_build_line(this))return true;
					l_x=this[11];
					if(gml_builder_build_expr(this,0))return true;
					l_x1=this[11];
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected for-loop post-action",gml_source_get_eof(this[2]));
					if(this[1][this[3]][0]==3)this[@3]+=1;
					if(gml_builder_build_line(this))return true;
					l_x2=this[11];
					if(l_proc){
						if(this[1][this[3]][0]==19)this[@3]+=1; else return gml_builder_expect(this,"a closing parenthesis",this[1][this[3]]);
					}
					if(gml_builder_build_line(this))return true;
					this[@11]=[102,l__g,l_x,l_x1,l_x2,this[11]];
					break;
				case 11:
					if(gml_builder_build_expr(this,0))return true;
					l_x1=this[11];
					if(gml_builder_build_line(this))return true;
					this[@11]=[98,l__g,l_x1,this[11]];
					break;
				case 10:
					if(gml_builder_build_expr(this,0))return true;
					l_x1=this[11];
					if(gml_builder_build_line(this))return true;
					this[@11]=[101,l__g,l_x1,this[11]];
					break;
				case 13:
					var l_d=l__g;
					if(gml_builder_build_line(this))return true;
					l_x1=this[11];
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected a `while` or `until`",gml_source_get_eof(this[2]));
					var l__g1=this[1][this[3]];
					if(l__g1[0]==9)switch(l__g1[2]){
						case 11:
							this[@3]+=1;
							if(gml_builder_build_expr(this,0))return true;
							this[@11]=[100,l_d,l_x1,this[11]];
							break;
						case 12:
							this[@3]+=1;
							if(gml_builder_build_expr(this,0))return true;
							this[@11]=[99,l_d,l_x1,this[11]];
							break;
						default:return gml_builder_expect(this,"a `while` or `until`",this[1][this[3]]);
					} else return gml_builder_expect(this,"a `while` or `until`",this[1][this[3]]);
					break;
				case 15:
					if(gml_builder_build_expr(this,0))return true;
					l_x1=this[11];
					if(gml_builder_build_line(this))return true;
					this[@11]=[103,l__g,l_x1,this[11]];
					break;
				case 17:this[@11]=[107,l__g];break;
				case 16:this[@11]=[108,l__g];break;
				case 19:this[@11]=[106,l__g];break;
				case 18:
					var l_d=l__g;
					if(this[3]<this[4]){
						var l__g1=this[1][this[3]];
						switch(l__g1[0]){
							case 23:this[@11]=[106,l__g1[1]];break;
							case 3:this[@11]=[106,l__g1[1]];break;
							default:
								if(gml_builder_build_expr(this,0))return true;
								this[@11]=[105,l_d,this[11]];
						}
					} else this[@11]=[106,l_d];
					break;
				case 20:
					if(gml_builder_build_expr(this,0))return true;
					this[@11]=[96,l__g,this[11]];
					break;
				case 28:this[@11]=[109,l__g];break;
				case 21:
					if(gml_builder_build_line(this))return true;
					l_x1=this[11];
					if(this[3]>=this[4]){
						return gml_builder_error_at(this,"Expected a catch-block",gml_source_get_eof(this[2]));
					} else {
						var l__g1=this[1][this[3]];
						if(l__g1[0]==9){
							if(l__g1[2]==22)this[@3]+=1; else return gml_builder_error(this,"Expected a catch-block",this[1][this[3]]);
						} else return gml_builder_error(this,"Expected a catch-block",this[1][this[3]]);
					}
					if(this[1][this[3]][0]==18){
						this[@3]+=1;
						l_proc=true;
					} else l_proc=false;
					if(this[3]>=this[4]){
						return gml_builder_error_at(this,"Expected a capture variable name",gml_source_get_eof(this[2]));
					} else {
						var l__g1=this[1][this[3]];
						if(l__g1[0]==10){
							this[@3]+=1;
							l_s=l__g1[2];
						} else return gml_builder_error(this,"Expected a capture variable name",this[1][this[3]]);
					}
					if(l_proc){
						if(this[3]>=this[4]){
							return gml_builder_error_at(this,"Expected a closing parenthesis",gml_source_get_eof(this[2]));
						} else if(this[1][this[3]][0]==19){
							this[@3]+=1;
						} else return gml_builder_error(this,"Expected a closing parenthesis",this[1][this[3]]);
					}
					if(gml_builder_build_line(this))return true;
					this[@11]=[110,l__g,l_x1,l_s,this[11]];
					break;
				case 23:
					if(gml_builder_build_expr(this,0))return true;
					this[@11]=[111,l__g,this[11]];
					break;
				default:l_unknown=true;
			}
			break;
		case 1:
			var l__g=this[1][this[@3]++];
			if(l__g[0]==10){
				var l_s1=l__g[2];
				if(gml_builder_build_line(this,false))return true;
				var l_i1=array_length(this[7]);
				this[7][@l_i1]=l_s1;
				this[8][@l_i1]=gml_macro_create(l_s1,this[11],gml_builder_build_line_is_expr,gml_builder_build_line_is_stat);
				this[@11]=[92,l_tk[1],[]];
			} else gml_builder_error(this,"Expected a macro name",this[1][this[3]]);
			break;
		case 22:
			var l_start=l_tk[1];
			l_proc=true;
			l_nodes=[];
			while(l_proc&&this[3]<this[4]){
				if(this[1][this[3]][0]==23){
					this[@3]+=1;
					l_proc=false;
				} else {
					if(gml_builder_build_line(this))return true;
					gml_std_gml_internal_ArrayImpl_push(l_nodes,this[11]);
				}
			}
			if(l_proc)return gml_builder_error_at(this,"Expected a closing bracket.",l_start);
			this[@11]=[92,l_start,l_nodes];
			break;
		case 10:
			var l_s=l_tk[2];
			var l_m=haxe_ds_basic_map_get(this[15][6],l_s);
			if(l_m!=undefined&&l_m[4]){
				this[@11]=gml_node_clone(l_m[2]);
			} else {
				l_i=gml_std_gml_internal_ArrayImpl_indexOf(this[7],l_s);
				if(l_i>=0){
					l_m=this[8][l_i];
					if(l_m[4])this[@11]=gml_node_clone(l_m[2]); else l_unknown=true;
				} else l_unknown=true;
			}
			break;
		default:l_unknown=true;
	}
	if(l_unknown){
		this[@3]-=1;
	} else {
		gml_builder_build_line_is_stat=true;
		gml_builder_build_line_is_expr=false;
	}
	if(l_unknown){
		var l_flags=4;
		if(l_reqStatement)l_flags|=1;
		if(gml_builder_build_expr(this,l_flags))return true;
		gml_builder_build_line_is_stat=gml_node_is_statement(this[11]);
		gml_builder_build_line_is_expr=true;
		if(l_reqStatement&&!gml_builder_build_line_is_stat)return gml_builder_expect_node(this,"a statement",this[11]);
	}
	while(this[3]<this[4]){
		if(this[1][this[3]][0]==3){
			this[@3]+=1;
			continue;
		}
		break;
	}
	return false;
}

if(live_enabled)
function gml_builder_build_outer(this,l_name,l_namedArgs,l_namedArgc,l_isFunc){
	this[@12]=l_name;
	var l_pos;
	if(this[3]>=this[4]){
		l_pos=gml_source_get_eof(this[2]);
	} else {
		var l_tkc=this[1][this[3]];
		l_pos=l_tkc[0];
	}
	var l_scr=gml_script_create(this[2],l_name,l_pos);
	if(l_namedArgs==undefined)l_namedArgs=haxe_ds_string_map_create();
	l_scr[@9]=l_namedArgs;
	l_scr[@8]=l_namedArgc;
	gml_std_gml_internal_ArrayImpl_push(this[5],l_scr);
	var l_nodes;
	if(l_isFunc){
		if(gml_builder_build_line(this))return true;
		l_scr[@4]=this[11];
		l_scr=this[5][0];
		var l__g=l_scr[4];
		if(l__g[0]==92)l_nodes=l__g[2]; else l_nodes=[l_scr[4]];
	} else l_nodes=[];
	while(this[3]<this[4]){
		var l__g=this[1][this[3]];
		switch(l__g[0]){
			case 0:break;
			case 9:
				if(l__g[2]!=24){
					if(gml_builder_build_line(this))return true;
					gml_std_gml_internal_ArrayImpl_push(l_nodes,this[11]);
					continue;
				}
				break;
			default:
				if(gml_builder_build_line(this))return true;
				gml_std_gml_internal_ArrayImpl_push(l_nodes,this[11]);
				continue;
		}
		break;
	}
	if(array_length(l_nodes)>1){
		l_scr[@4]=[92,gml_std_haxe_enum_tools_getParameter(l_nodes[0],0),l_nodes];
	} else if(array_length(l_nodes)==1){
		l_scr[@4]=l_nodes[0];
	} else l_scr[@4]=[92,gml_source_get_eof(this[2]),l_nodes];
	return false;
}

if(live_enabled)
function gml_builder_build_script_args(this){
	var l_nextArgs=haxe_ds_string_map_create();
	var l_nextArgc=0;
	var l_proc=true;
	if(this[3]>=this[4])return gml_builder_error_at(this,"Expected script arguments",gml_source_get_eof(this[2]));
	var l__g=this[1][this[3]];
	var l_tmp;
	if(l__g[0]==19)l_tmp=true; else l_tmp=false;
	if(l_tmp){
		this[@3]+=1;
	} else while(l_proc&&this[3]<this[4]){
		var l__g=this[1][this[3]];
		if(l__g[0]==10){
			var l_s=l__g[2];
			var l_nextArg=l_s;
			if(haxe_ds_basic_map_exists(l_nextArgs,l_nextArg))return gml_builder_error(this,"An argument named "+l_nextArg+" is already defined at position "+gml_std_Std_stringify(haxe_ds_basic_map_get(l_nextArgs,l_nextArg)),this[1][this[3]]);
			haxe_ds_basic_map_set(l_nextArgs,l_s,l_nextArgc);
			l_nextArgc++;
			this[@3]+=1;
			switch(this[1][this[3]][0]){
				case 19:
					this[@3]+=1;
					l_proc=false;
					break;
				case 4:this[@3]+=1;break;
				default:return gml_builder_expect(this,"a comma or closing parenthesis in script arguments",this[1][this[3]]);
			}
		} else return gml_builder_expect(this,"an argument",this[1][this[3]]);
	}
	this[@13]=l_nextArgs;
	this[@14]=l_nextArgc;
	return false;
}

if(live_enabled)
function gml_builder_build_loop(this,l_first){
	if(gml_builder_build_outer(this,l_first,undefined,0,false))return true;
	var l_hasFirstFunc=false;
	while(this[3]<this[4]){
		var l_tk=this[1][this[3]];
		switch(l_tk[0]){
			case 0:
				this[@3]+=1;
				var l_nextName=l_tk[2];
				var l_nextArgs=undefined;
				var l_nextArgc=0;
				if(!(l_tk[3]||this[3]>=this[4])){
					var l__g1=this[1][this[3]];
					var l_tmp;
					if(l__g1[0]==18)l_tmp=true; else l_tmp=false;
					if(l_tmp){
						this[@3]+=1;
						if(gml_builder_build_script_args(this))return true;
						l_nextArgs=this[13];
						l_nextArgc=this[14];
						this[@13]=undefined;
					}
				}
				if(gml_builder_build_outer(this,l_nextName,l_nextArgs,l_nextArgc,false))return true;
				break;
			case 9:
				if(l_tk[2]==24){
					this[@3]+=1;
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected a function name",gml_source_get_eof(this[2]));
					var l_nextName1;
					l_tk=this[1][this[3]];
					if(l_tk[0]==10){
						l_nextName1=l_tk[2];
						this[@3]+=1;
					} else if(l_hasFirstFunc){
						return gml_builder_expect(this,"a function name",l_tk);
					} else {
						l_hasFirstFunc=true;
						l_nextName1=l_first;
					}
					if(this[3]>=this[4])return gml_builder_error_at(this,"Expected an opening `(`",gml_source_get_eof(this[2]));
					l_tk=this[1][this[@3]++];
					var l_tmp1;
					if(l_tk[0]==18)l_tmp1=true; else l_tmp1=false;
					if(!l_tmp1)return gml_builder_expect(this,"an opening `(`",l_tk);
					if(gml_builder_build_script_args(this))return true;
					if(this[3]<this[4]){
						l_tk=this[1][this[3]];
						var l_tmp2;
						if(l_tk[0]==10)l_tmp2=l_tk[2]=="constructor"; else l_tmp2=false;
						if(l_tmp2)this[@3]+=1;
					}
					var l_nextArgs1=this[13];
					this[@13]=undefined;
					if(gml_builder_build_outer(this,l_nextName1,l_nextArgs1,this[14],true))return true;
				} else return gml_builder_expect(this,"A script declaration",l_tk);
				break;
			default:return gml_builder_expect(this,"A script declaration",l_tk);
		}
	}
	return false;
}

if(live_enabled)
function gml_compile_error(l_text,l_pos){
	gml_compile_error_text=gml_pos_to_string(l_pos)+" "+l_text;
	gml_compile_error_pos=l_pos;
	return true;
}

if(live_enabled)
function gml_compile_node(l_q,l_r,l_out){
	var l_x,l_x2,l_w,l_i,l_k,l_l,l_n,l_p0,l_p1,l_p2,l_p3,l_pc,l_pb,l_s,l_v,l_d,l_o;
	var l__g=l_q;
	switch(l__g[0]){
		case 0:if(l_out)ds_list_add(l_r,[4,l__g[1]]);break;
		case 1:
			var l_f=l__g[2];
			var l_d1=l__g[1];
			if(l_out)ds_list_add(l_r,[5,l_d1,l_f]);
			break;
		case 2:if(l_out)ds_list_add(l_r,[6,l__g[1],l__g[2]]);break;
		case 8:ds_list_add(l_r,[10,l__g[1]]);break;
		case 9:ds_list_add(l_r,[11,l__g[1]]);break;
		case 10:ds_list_add(l_r,[5,l__g[1],-5]);break;
		case 6:
			l_d=l__g[1];
			l_x=l__g[2];
			var l__g1=l_x;
			switch(l__g1[0]){
				case 35:ds_list_add(l_r,[77,l_d,haxe_ds_basic_map_get(gml_compile_curr_script[6],l__g1[2])]);break;
				case 38:ds_list_add(l_r,[78,l_d,l__g1[2]]);break;
				case 41:
					l_x2=l__g1[2];
					if(gml_node_is_simple(l_x2)){
						if(gml_compile_node(l_x2,l_r,true))return true;
						ds_list_add(l_r,[79,l_d,l__g1[3]]);
					} else return gml_compile_error("Cannot ensure array type - expression may have side effects.",l__g1[1]);
					break;
				default:return gml_compile_error("Cannot ensure array type for value. Use [@index] if it does not need allocation or create it explicitly.",l_d);
			}
			break;
		case 34:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			ds_list_add(l_r,[47,l__g[1],l__g[4]]);
			break;
		case 11:ds_list_add(l_r,[9,l__g[1],l__g[2][3]]);break;
		case 13:ds_list_add(l_r,[9,l__g[1],haxe_ds_basic_map_get(gml_const_val,l__g[2])]);break;
		case 12:ds_list_add(l_r,[9,l__g[1],l__g[3]]);break;
		case 4:
			l_w=l__g[2];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			ds_list_add(l_r,[7,l__g[1],l_n]);
			break;
		case 5:
			var l_keys=l__g[2];
			l_w=l__g[3];
			l_n=array_length(l_w);
			l_s="";
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
				l_s+=l_keys[l_i]+"\n";
			}
			ds_list_add(l_r,[8,l__g[1],l_keys]);
			break;
		case 91:
			l_x=l__g[3];
			if(l_x!=undefined){
				if(gml_compile_node(l_x,l_r,true))return true;
				ds_list_add(l_r,[13,l__g[1],haxe_ds_basic_map_get(gml_compile_curr_script[6],l__g[2])]);
			}
			break;
		case 35:ds_list_add(l_r,[12,l__g[1],haxe_ds_basic_map_get(gml_compile_curr_script[6],l__g[2])]);break;
		case 36:
			if(gml_compile_node(l__g[3],l_r,true))return true;
			ds_list_add(l_r,[13,l__g[1],haxe_ds_basic_map_get(gml_compile_curr_script[6],l__g[2])]);
			break;
		case 37:
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[14,l__g[1],l__g[3],haxe_ds_basic_map_get(gml_compile_curr_script[6],l__g[2])]);
			break;
		case 38:ds_list_add(l_r,[15,l__g[1],l__g[2]]);break;
		case 39:
			if(gml_compile_node(l__g[3],l_r,true))return true;
			ds_list_add(l_r,[16,l__g[1],l__g[2]]);
			break;
		case 40:
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[17,l__g[1],l__g[3],l__g[2]]);
			break;
		case 41:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			ds_list_add(l_r,[18,l__g[1],l__g[3]]);
			break;
		case 42:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[19,l__g[1],l__g[3]]);
			break;
		case 43:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[5],l_r,true))return true;
			ds_list_add(l_r,[20,l__g[1],l__g[4],l__g[3]]);
			break;
		case 53:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			ds_list_add(l_r,[80,l__g[1]]);
			break;
		case 54:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[81,l__g[1]]);
			break;
		case 55:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[5],l_r,true))return true;
			ds_list_add(l_r,[82,l__g[1],l__g[4]]);
			break;
		case 66:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			ds_list_add(l_r,[21,l__g[1]]);
			break;
		case 56:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			ds_list_add(l_r,[21,l__g[1]]);
			break;
		case 67:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[22,l__g[1]]);
			break;
		case 57:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[22,l__g[1]]);
			break;
		case 58:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[5],l_r,true))return true;
			ds_list_add(l_r,[23,l__g[1],l__g[4]]);
			break;
		case 68:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[5],l_r,true))return true;
			ds_list_add(l_r,[23,l__g[1],l__g[4]]);
			break;
		case 71:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[24,l__g[1]]);
			break;
		case 61:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[24,l__g[1]]);
			break;
		case 72:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			if(gml_compile_node(l__g[5],l_r,true))return true;
			ds_list_add(l_r,[25,l__g[1]]);
			break;
		case 62:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			if(gml_compile_node(l__g[5],l_r,true))return true;
			ds_list_add(l_r,[25,l__g[1]]);
			break;
		case 73:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			if(gml_compile_node(l__g[6],l_r,true))return true;
			ds_list_add(l_r,[26,l__g[1],l__g[5]]);
			break;
		case 63:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			if(gml_compile_node(l__g[6],l_r,true))return true;
			ds_list_add(l_r,[26,l__g[1],l__g[5]]);
			break;
		case 44:ds_list_add(l_r,[27,l__g[1],haxe_ds_basic_map_get(gml_var_refs,l__g[2])]);break;
		case 45:
			var l_s1=l__g[2];
			if(gml_compile_node(l__g[3],l_r,true))return true;
			ds_list_add(l_r,[28,l__g[1],haxe_ds_basic_map_get(gml_var_refs,l_s1),haxe_ds_basic_map_get(gml_var_types,l_s1)]);
			break;
		case 46:
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[29,l__g[1],l__g[3],haxe_ds_basic_map_get(gml_var_refs,l__g[2])]);
			break;
		case 50:
			if(gml_compile_node(l__g[3],l_r,true))return true;
			ds_list_add(l_r,[30,l__g[1],haxe_ds_basic_map_get(gml_var_refs,l__g[2])]);
			break;
		case 51:
			var l_s1=l__g[2];
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[4],l_r,true))return true;
			ds_list_add(l_r,[31,l__g[1],haxe_ds_basic_map_get(gml_var_refs,l_s1),haxe_ds_basic_map_get(gml_var_types,l_s1)]);
			break;
		case 52:
			if(gml_compile_node(l__g[3],l_r,true))return true;
			if(gml_compile_node(l__g[5],l_r,true))return true;
			ds_list_add(l_r,[32,l__g[1],l__g[4],haxe_ds_basic_map_get(gml_var_refs,l__g[2])]);
			break;
		case 76:
			l_s="ds_list_find_value";
			if(haxe_ds_basic_map_exists(gml_func_script,l_s)){
				if(gml_compile_node(l__g[2],l_r,true))return true;
				if(gml_compile_node(l__g[3],l_r,true))return true;
				ds_list_add(l_r,[51,l__g[1],haxe_ds_basic_map_get(gml_func_script,l_s),2,haxe_ds_basic_map_get(gml_func_args,l_s),haxe_ds_basic_map_get(gml_func_rest,l_s),0,l_out]);
			} else return gml_compile_error("Accessor not supported",l__g[1]);
			break;
		case 77:
			l_s="ds_list_set";
			if(haxe_ds_basic_map_exists(gml_func_script,l_s)){
				if(gml_compile_node(l__g[2],l_r,true))return true;
				if(gml_compile_node(l__g[3],l_r,true))return true;
				if(gml_compile_node(l__g[4],l_r,true))return true;
				ds_list_add(l_r,[51,l__g[1],haxe_ds_basic_map_get(gml_func_script,l_s),3,haxe_ds_basic_map_get(gml_func_args,l_s),haxe_ds_basic_map_get(gml_func_rest,l_s),0,l_out]);
			} else return gml_compile_error("Accessor not supported",l__g[1]);
			break;
		case 78:
			if(haxe_ds_basic_map_exists(gml_func_script,"ds_list_find_value")&&haxe_ds_basic_map_exists(gml_func_script,"ds_list_set")){
				if(gml_compile_node(l__g[2],l_r,true))return true;
				if(gml_compile_node(l__g[3],l_r,true))return true;
				if(gml_compile_node(l__g[5],l_r,true))return true;
				ds_list_add(l_r,[33,l__g[1],l__g[4],3,haxe_ds_basic_map_get(gml_func_script,"ds_list_find_value"),haxe_ds_basic_map_get(gml_func_script,"ds_list_set"),l_out]);
			} else return gml_compile_error("Accessor not supported",l__g[1]);
			break;
		case 81:
			l_s="ds_map_find_value";
			if(haxe_ds_basic_map_exists(gml_func_script,l_s)){
				if(gml_compile_node(l__g[2],l_r,true))return true;
				if(gml_compile_node(l__g[3],l_r,true))return true;
				ds_list_add(l_r,[51,l__g[1],haxe_ds_basic_map_get(gml_func_script,l_s),2,haxe_ds_basic_map_get(gml_func_args,l_s),haxe_ds_basic_map_get(gml_func_rest,l_s),0,l_out]);
			} else return gml_compile_error("Accessor not supported",l__g[1]);
			break;
		case 82:
			l_s="ds_map_set";
			if(haxe_ds_basic_map_exists(gml_func_script,l_s)){
				if(gml_compile_node(l__g[2],l_r,true))return true;
				if(gml_compile_node(l__g[3],l_r,true))return true;
				if(gml_compile_node(l__g[4],l_r,true))return true;
				ds_list_add(l_r,[51,l__g[1],haxe_ds_basic_map_get(gml_func_script,l_s),3,haxe_ds_basic_map_get(gml_func_args,l_s),haxe_ds_basic_map_get(gml_func_rest,l_s),0,l_out]);
			} else return gml_compile_error("Accessor not supported",l__g[1]);
			break;
		case 83:
			if(haxe_ds_basic_map_exists(gml_func_script,"ds_map_find_value")&&haxe_ds_basic_map_exists(gml_func_script,"ds_map_set")){
				if(gml_compile_node(l__g[2],l_r,true))return true;
				if(gml_compile_node(l__g[3],l_r,true))return true;
				if(gml_compile_node(l__g[5],l_r,true))return true;
				ds_list_add(l_r,[33,l__g[1],l__g[4],3,haxe_ds_basic_map_get(gml_func_script,"ds_map_find_value"),haxe_ds_basic_map_get(gml_func_script,"ds_map_set"),l_out]);
			} else return gml_compile_error("Accessor not supported",l__g[1]);
			break;
		case 86:
			l_s="ds_grid_get";
			if(haxe_ds_basic_map_exists(gml_func_script,l_s)){
				if(gml_compile_node(l__g[2],l_r,true))return true;
				if(gml_compile_node(l__g[3],l_r,true))return true;
				if(gml_compile_node(l__g[4],l_r,true))return true;
				ds_list_add(l_r,[51,l__g[1],haxe_ds_basic_map_get(gml_func_script,l_s),3,haxe_ds_basic_map_get(gml_func_args,l_s),haxe_ds_basic_map_get(gml_func_rest,l_s),0,l_out]);
			} else return gml_compile_error("Accessor not supported",l__g[1]);
			break;
		case 87:
			l_s="ds_grid_set";
			if(haxe_ds_basic_map_exists(gml_func_script,l_s)){
				if(gml_compile_node(l__g[2],l_r,true))return true;
				if(gml_compile_node(l__g[3],l_r,true))return true;
				if(gml_compile_node(l__g[4],l_r,true))return true;
				if(gml_compile_node(l__g[5],l_r,true))return true;
				ds_list_add(l_r,[51,l__g[1],haxe_ds_basic_map_get(gml_func_script,l_s),4,haxe_ds_basic_map_get(gml_func_args,l_s),haxe_ds_basic_map_get(gml_func_rest,l_s),0,l_out]);
			} else return gml_compile_error("Accessor not supported",l__g[1]);
			break;
		case 88:
			if(haxe_ds_basic_map_exists(gml_func_script,"ds_grid_get")&&haxe_ds_basic_map_exists(gml_func_script,"ds_grid_set")){
				if(gml_compile_node(l__g[2],l_r,true))return true;
				if(gml_compile_node(l__g[3],l_r,true))return true;
				if(gml_compile_node(l__g[4],l_r,true))return true;
				if(gml_compile_node(l__g[6],l_r,true))return true;
				ds_list_add(l_r,[33,l__g[1],l__g[5],4,haxe_ds_basic_map_get(gml_func_script,"ds_grid_get"),haxe_ds_basic_map_get(gml_func_script,"ds_grid_set"),l_out]);
			} else return gml_compile_error("Accessor not supported",l__g[1]);
			break;
		case 14:ds_list_add(l_r,[34,l__g[1],l__g[2]]);break;
		case 15:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			ds_list_add(l_r,[37,l__g[1]]);
			break;
		case 16:ds_list_add(l_r,[40,l__g[1]]);break;
		case 31:
			l_d=l__g[1];
			l_o=l__g[2];
			l_x=l__g[3];
			l_x2=l__g[4];
			var l__g1=l_x;
			switch(l__g1[0]){
				case 14:
					l_i=l__g1[2];
					if(gml_compile_node(l_x2,l_r,true))return true;
					if(l_o!=-1)ds_list_add(l_r,[36,l_d,l_o,l_i]); else ds_list_add(l_r,[35,l_d,l_i]);
					break;
				case 15:
					if(gml_compile_node(l__g1[2],l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					if(l_o!=-1)ds_list_add(l_r,[39,l_d,l_o]); else ds_list_add(l_r,[38,l_d]);
					break;
				default:return gml_compile_error("Cannot set "+gml_std_Type_enumConstructor(l_x),l_d);
			}
			break;
		case 30:
			l_d=l__g[1];
			l_o=l__g[2];
			l_x=l__g[3];
			l_x2=l__g[4];
			switch(l_o){
				case 18:
					if(gml_compile_node(l_x,l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_add(l_r,[44,l_d]);
					break;
				case 64:
					if(gml_compile_node(l_x,l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_add(l_r,[42,l_d]);
					break;
				case 65:
					if(gml_compile_node(l_x,l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_add(l_r,[43,l_d]);
					break;
				case 80:
					if(gml_compile_node(l_x,l_r,true))return true;
					l_p0=ds_list_size(l_r);
					ds_list_add(l_r,[58,l_d,0]);
					if(gml_compile_node(l_x2,l_r,true))return true;
					l_r[|l_p0]=[58,l_d,ds_list_size(l_r)];
					break;
				case 96:
					if(gml_compile_node(l_x,l_r,true))return true;
					l_p0=ds_list_size(l_r);
					ds_list_add(l_r,[59,l_d,0]);
					if(gml_compile_node(l_x2,l_r,true))return true;
					l_r[|l_p0]=[59,l_d,ds_list_size(l_r)];
					break;
				default:
					if(gml_compile_node(l_x,l_r,true))return true;
					if(gml_compile_node(l_x2,l_r,true))return true;
					ds_list_add(l_r,[45,l_d,l_o]);
			}
			break;
		case 29:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			ds_list_add(l_r,[46,l__g[1],l__g[3]]);
			break;
		case 27:
			l_d=l__g[1];
			l_x=l__g[2];
			l_i=(l__g[3]?1:-1);
			var l__g1=l_x;
			switch(l__g1[0]){
				case 35:
					l_k=haxe_ds_basic_map_get(gml_compile_curr_script[6],l__g1[2]);
					ds_list_add(l_r,[12,l_d,l_k]);
					ds_list_add(l_r,[41,l_d,l_i]);
					if(l_out)ds_list_add(l_r,[1,l_d]);
					ds_list_add(l_r,[13,l_d,l_k]);
					break;
				case 38:
					l_s=l__g1[2];
					ds_list_add(l_r,[15,l_d,l_s]);
					ds_list_add(l_r,[41,l_d,l_i]);
					if(l_out)ds_list_add(l_r,[1,l_d]);
					ds_list_add(l_r,[16,l_d,l_s]);
					break;
				case 41:
					l_s=l__g1[3];
					if(gml_compile_node(l__g1[2],l_r,true))return true;
					ds_list_add(l_r,[1,l_d]);
					ds_list_add(l_r,[18,l_d,l_s]);
					ds_list_add(l_r,[41,l_d,l_i]);
					if(l_out)ds_list_add(l_r,[3,l_d,2]);
					ds_list_add(l_r,[19,l_d,l_s]);
					break;
				case 56:
					if(gml_compile_node(l__g1[2],l_r,true))return true;
					if(gml_compile_node(l__g1[3],l_r,true))return true;
					ds_list_add(l_r,[2,l_d]);
					ds_list_add(l_r,[21,l_d]);
					ds_list_add(l_r,[41,l_d,l_i]);
					if(l_out)ds_list_add(l_r,[3,l_d,3]);
					ds_list_add(l_r,[22,l_d]);
					break;
				case 66:
					if(gml_compile_node(l__g1[2],l_r,true))return true;
					if(gml_compile_node(l__g1[3],l_r,true))return true;
					ds_list_add(l_r,[2,l_d]);
					ds_list_add(l_r,[21,l_d]);
					ds_list_add(l_r,[41,l_d,l_i]);
					if(l_out)ds_list_add(l_r,[3,l_d,3]);
					ds_list_add(l_r,[22,l_d]);
					break;
				default:return gml_compile_error("Can't apply prefix to "+gml_std_Type_enumConstructor(l_x),l_d);
			}
			break;
		case 28:
			l_d=l__g[1];
			l_x=l__g[2];
			l_i=(l__g[3]?1:-1);
			var l__g1=l_x;
			switch(l__g1[0]){
				case 35:
					l_k=haxe_ds_basic_map_get(gml_compile_curr_script[6],l__g1[2]);
					ds_list_add(l_r,[12,l_d,l_k]);
					if(l_out)ds_list_add(l_r,[1,l_d]);
					ds_list_add(l_r,[41,l_d,l_i]);
					ds_list_add(l_r,[13,l_d,l_k]);
					break;
				case 38:
					l_s=l__g1[2];
					ds_list_add(l_r,[15,l_d,l_s]);
					if(l_out)ds_list_add(l_r,[1,l_d]);
					ds_list_add(l_r,[41,l_d,l_i]);
					ds_list_add(l_r,[16,l_d,l_s]);
					break;
				case 41:
					l_s=l__g1[3];
					if(gml_compile_node(l__g1[2],l_r,true))return true;
					ds_list_add(l_r,[1,l_d]);
					ds_list_add(l_r,[18,l_d,l_s]);
					if(l_out)ds_list_add(l_r,[3,l_d,2]);
					ds_list_add(l_r,[41,l_d,l_i]);
					ds_list_add(l_r,[19,l_d,l_s]);
					break;
				case 56:
					if(gml_compile_node(l__g1[2],l_r,true))return true;
					if(gml_compile_node(l__g1[3],l_r,true))return true;
					ds_list_add(l_r,[2,l_d]);
					ds_list_add(l_r,[21,l_d]);
					if(l_out)ds_list_add(l_r,[3,l_d,3]);
					ds_list_add(l_r,[41,l_d,l_i]);
					ds_list_add(l_r,[22,l_d]);
					break;
				case 66:
					if(gml_compile_node(l__g1[2],l_r,true))return true;
					if(gml_compile_node(l__g1[3],l_r,true))return true;
					ds_list_add(l_r,[2,l_d]);
					ds_list_add(l_r,[21,l_d]);
					if(l_out)ds_list_add(l_r,[3,l_d,3]);
					ds_list_add(l_r,[41,l_d,l_i]);
					ds_list_add(l_r,[22,l_d]);
					break;
				default:return gml_compile_error("Can't apply postfix to "+gml_std_Type_enumConstructor(l_x),l_d);
			}
			break;
		case 18:
			l_d=l__g[1];
			l_w=l__g[3];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			ds_list_add(l_r,[48,l_d,haxe_ds_basic_map_get(gml_compile_curr_program[3],l__g[2]),l_n]);
			if(l_out)ds_list_add(l_r,[70,l_d]);
			break;
		case 20:
			l_d=l__g[1];
			l_w=l__g[3];
			l_n=array_length(l_w);
			if(gml_compile_node(l__g[2],l_r,true))return true;
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			ds_list_add(l_r,[49,l_d,l_n]);
			if(l_out)ds_list_add(l_r,[70,l_d]);
			break;
		case 24:
			l_d=l__g[1];
			if(gml_compile_node(l__g[2],l_r,true))return true;
			l_w=l__g[4];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				gml_compile_node(l_w[l_i],l_r,true);
			}
			ds_list_add(l_r,[52,l_d,l__g[3],l_n]);
			if(l_out)ds_list_add(l_r,[70,l_d]);
			break;
		case 22:
			l_d=l__g[1];
			if(gml_compile_node(l__g[2],l_r,true))return true;
			l_w=l__g[4];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				gml_compile_node(l_w[l_i],l_r,true);
			}
			ds_list_add(l_r,[52,l_d,l__g[3],l_n]);
			if(l_out)ds_list_add(l_r,[70,l_d]);
			break;
		case 25:
			l_d=l__g[1];
			l_w=l__g[3];
			l_n=array_length(l_w);
			if(gml_compile_node(l__g[2],l_r,true))return true;
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			ds_list_add(l_r,[53,l_d,l_n]);
			if(l_out)ds_list_add(l_r,[70,l_d]);
			break;
		case 21:
			l_d=l__g[1];
			if(gml_compile_node(l__g[2],l_r,true))return true;
			if(gml_compile_node(l__g[3],l_r,true))return true;
			ds_list_add(l_r,[50,l_d]);
			if(l_out)ds_list_add(l_r,[70,l_d]);
			break;
		case 19:
			l_d=l__g[1];
			return gml_compile_error("dot-calls are currently not supported.",l_d);
		case 23:
			var l__d=l__g[1];
			l_s=l__g[2];
			l_d=l__d;
			l_w=l__g[3];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_compile_node(l_w[l_i],l_r,true))return true;
			}
			if(haxe_ds_basic_map_get(gml_func_script,l_s)==-1)return gml_compile_error("Function `"+l_s+"` is pointing at an invalid script.",l__d);
			l_i=haxe_ds_basic_map_get(gml_inst_data,l_s);
			ds_list_add(l_r,[51,l_d,haxe_ds_basic_map_get(gml_func_script,l_s),l_n,haxe_ds_basic_map_get(gml_func_args,l_s),haxe_ds_basic_map_get(gml_func_rest,l_s),l_i,l_out&&l_i!=-5]);
			if(l_out&&l_i==-5)ds_list_add(l_r,[70,l_d]);
			break;
		case 26:ds_list_add(l_r,[54,l__g[1],l__g[2]]);break;
		case 92:
			l_w=l__g[2];
			l_n=array_length(l_w);
			if(l_n>0){
				l_n--;
				for(l_i=0;l_i<l_n;l_i++){
					if(gml_compile_node(l_w[l_i],l_r,false))return true;
				}
				if(gml_compile_node(l_w[l_i],l_r,l_out))return true;
			}
			break;
		case 93:
			l_d=l__g[1];
			l_x=l__g[4];
			if(gml_compile_node(l__g[2],l_r,true))return true;
			l_i=ds_list_size(l_r);
			ds_list_add(l_r,[57,l_d,0]);
			if(gml_compile_node(l__g[3],l_r,false))return true;
			if(l_x!=undefined){
				l_n=ds_list_size(l_r);
				ds_list_add(l_r,[55,l_d,0]);
				l_r[|l_i]=[57,l_d,ds_list_size(l_r)];
				if(gml_compile_node(l_x,l_r,false))return true;
				l_r[|l_n]=[55,l_d,ds_list_size(l_r)];
			} else l_r[|l_i]=[57,l_d,ds_list_size(l_r)];
			break;
		case 94:
			l_d=l__g[1];
			if(gml_compile_node(l__g[2],l_r,true))return true;
			l_i=ds_list_size(l_r);
			ds_list_add(l_r,[57,l_d,0]);
			if(gml_compile_node(l__g[3],l_r,l_out))return true;
			l_n=ds_list_size(l_r);
			ds_list_add(l_r,[55,l_d,0]);
			l_r[|l_i]=[57,l_d,ds_list_size(l_r)];
			if(gml_compile_node(l__g[4],l_r,l_out))return true;
			l_r[|l_n]=[55,l_d,ds_list_size(l_r)];
			break;
		case 101:
			l_d=l__g[1];
			if(gml_compile_node(l__g[2],l_r,true))return true;
			l_n=ds_list_size(l_r);
			ds_list_add(l_r,[63,l_d,0]);
			l_p0=ds_list_size(l_r);
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g[3],l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,[62,l_d,l_p0]);
			l_p2=ds_list_size(l_r);
			ds_list_add(l_r,[0,l_d]);
			for(l_k=l_p0;l_k<l_p2;l_k++){
				var l__g1=l_r[|l_k];
				switch(l__g1[0]){
					case 68:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p1];break;
					case 67:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p2];break;
				}
			}
			l_r[|l_n]=[63,l_d,ds_list_size(l_r)];
			break;
		case 98:
			l_d=l__g[1];
			l_p0=ds_list_size(l_r);
			if(gml_compile_node(l__g[2],l_r,true))return true;
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,[57,l_d,0]);
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g[3],l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			ds_list_add(l_r,[55,l_d,l_p0]);
			l_p2=ds_list_size(l_r);
			l_r[|l_p1]=[57,l_d,l_p2];
			for(l_k=l_p1;l_k<l_p2;l_k++){
				var l__g1=l_r[|l_k];
				switch(l__g1[0]){
					case 68:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p0];break;
					case 67:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p2];break;
				}
			}
			break;
		case 100:
			l_d=l__g[1];
			l_p0=ds_list_size(l_r);
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g[2],l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			l_p1=ds_list_size(l_r);
			if(gml_compile_node(l__g[3],l_r,true))return true;
			var l__g1=l_q;
			var l_tmp;
			if(l__g1[0]==99)l_tmp=true; else l_tmp=false;
			if(l_tmp)ds_list_add(l_r,[57,l_d,l_p0]); else ds_list_add(l_r,[56,l_d,l_p0]);
			l_p2=ds_list_size(l_r);
			for(l_k=l_p0;l_k<l_p1;l_k++){
				var l__g1=l_r[|l_k];
				switch(l__g1[0]){
					case 68:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p1];break;
					case 67:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p2];break;
				}
			}
			break;
		case 99:
			l_d=l__g[1];
			l_p0=ds_list_size(l_r);
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g[2],l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			l_p1=ds_list_size(l_r);
			if(gml_compile_node(l__g[3],l_r,true))return true;
			var l__g1=l_q;
			var l_tmp;
			if(l__g1[0]==99)l_tmp=true; else l_tmp=false;
			if(l_tmp)ds_list_add(l_r,[57,l_d,l_p0]); else ds_list_add(l_r,[56,l_d,l_p0]);
			l_p2=ds_list_size(l_r);
			for(l_k=l_p0;l_k<l_p1;l_k++){
				var l__g1=l_r[|l_k];
				switch(l__g1[0]){
					case 68:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p1];break;
					case 67:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p2];break;
				}
			}
			break;
		case 102:
			l_d=l__g[1];
			if(gml_compile_node(l__g[2],l_r,false))return true;
			l_p0=ds_list_size(l_r);
			if(gml_compile_node(l__g[3],l_r,true))return true;
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,[57,l_d,0]);
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g[5],l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			l_p2=ds_list_size(l_r);
			if(gml_compile_node(l__g[4],l_r,false))return true;
			ds_list_add(l_r,[55,l_d,l_p0]);
			l_p3=ds_list_size(l_r);
			l_r[|l_p1]=[57,l_d,l_p3];
			for(l_k=l_p1;l_k<l_p2;l_k++){
				var l__g1=l_r[|l_k];
				switch(l__g1[0]){
					case 68:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p2];break;
					case 67:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p3];break;
				}
			}
			break;
		case 95:
			var l__cc=l__g[3];
			l_d=l__g[1];
			var l_jt=ds_map_create();
			if(gml_compile_node(l__g[2],l_r,true))return true;
			l_p0=ds_list_size(l_r);
			l_n=array_length(l__cc);
			for(l_i=0;l_i<l_n;l_i++){
				var l__cv=l__cc[l_i][0];
				l_l=array_length(l__cv);
				for(l_k=0;l_k<l_l;l_k++){
					if(!gml_node_has_value(l__cv[l_k]))break;
				}
				if(l_k<l_l)break;
			}
			if(l_i<l_n){
				var l_caseLabels=[];
				l_pb=gml_compile_curr_break;
				gml_compile_curr_break=l_p0;
				for(l_i=0;l_i<l_n;l_i++){
					var l__cv=l__cc[l_i][0];
					l_l=array_length(l__cv);
					var l_cl1=[];
					for(l_k=0;l_k<l_l;l_k++){
						if(gml_compile_node(l__cv[l_k],l_r,true))return true;
						l_cl1[@l_k]=ds_list_size(l_r);
						ds_list_add(l_r,[61,l_d,0]);
					}
					l_caseLabels[@l_i]=l_cl1;
				}
				ds_list_add(l_r,[0,l_d]);
				var l_defCasePos=ds_list_size(l_r);
				ds_list_add(l_r,[55,l_d,0]);
				for(l_i=0;l_i<l_n;l_i++){
					var l_cl1=l_caseLabels[l_i];
					l_l=array_length(l_cl1);
					for(l_k=0;l_k<l_l;l_k++){
						l_r[|l_cl1[l_k]]=[61,l_d,ds_list_size(l_r)];
					}
					if(gml_compile_node(l__cc[l_i][1],l_r,false))return true;
				}
				l_r[|l_defCasePos]=[55,l_d,ds_list_size(l_r)];
				l_x=l__g[4];
				if(l_x!=undefined&&gml_compile_node(l_x,l_r,false))return true;
				gml_compile_curr_break=l_pb;
			} else {
				ds_list_add(l_r,[60,l_d,l_jt,0]);
				l_pb=gml_compile_curr_break;
				gml_compile_curr_break=l_p0;
				l_n=array_length(l__cc);
				for(l_i=0;l_i<l_n;l_i++){
					var l__cv=l__cc[l_i][0];
					l_l=array_length(l__cv);
					for(l_k=0;l_k<l_l;l_k++){
						var l_v=gml_node_to_value(l__cv[l_k]);
						l_jt[?l_v[0]]=ds_list_size(l_r);
					}
					if(gml_compile_node(l__cc[l_i][1],l_r,false))return true;
				}
				l_p1=ds_list_size(l_r);
				l_x=l__g[4];
				if(l_x!=undefined&&gml_compile_node(l_x,l_r,false))return true;
				gml_compile_curr_break=l_pb;
				l_r[|l_p0]=[60,l_d,l_jt,l_p1];
			}
			l_p2=ds_list_size(l_r);
			for(l_k=l_p0;l_k<l_p2;l_k++){
				var l__g1=l_r[|l_k];
				if(l__g1[0]==67){
					var l_lp=l__g1[2];
					var l_d1=l__g1[1];
					if(l_lp==l_p0)l_r[|l_k]=[55,l_d1,l_p2];
				}
			}
			break;
		case 103:
			l_d=l__g[1];
			if(gml_compile_node(l__g[2],l_r,true))return true;
			ds_list_add(l_r,[64,l_d]);
			l_p0=ds_list_size(l_r);
			ds_list_add(l_r,[65,l_d,0]);
			l_pc=gml_compile_curr_continue;
			l_pb=gml_compile_curr_break;
			gml_compile_curr_continue=l_p0;
			gml_compile_curr_break=l_p0;
			if(gml_compile_node(l__g[3],l_r,false))return true;
			gml_compile_curr_continue=l_pc;
			gml_compile_curr_break=l_pb;
			ds_list_add(l_r,[55,l_d,l_p0]);
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,[66,l_d]);
			l_r[|l_p0]=[65,l_d,l_p1];
			for(l_k=l_p0;l_k<l_p1;l_k++){
				var l__g1=l_r[|l_k];
				switch(l__g1[0]){
					case 68:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p0];break;
					case 67:if(l__g1[2]==l_p0)l_r[|l_k]=[55,l__g1[1],l_p1];break;
				}
			}
			break;
		case 110:
			l_d=l__g[1];
			l_p0=ds_list_size(l_r);
			ds_list_add(l_r,[71,l_d,0]);
			if(gml_compile_node(l__g[2],l_r,false))return true;
			l_p1=ds_list_size(l_r);
			ds_list_add(l_r,[73,l_d,0]);
			l_r[|l_p0]=[71,l_d,ds_list_size(l_r)];
			ds_list_add(l_r,[72,l_d,haxe_ds_basic_map_get(gml_compile_curr_script[6],l__g[3])]);
			if(gml_compile_node(l__g[4],l_r,false))return true;
			l_r[|l_p1]=[73,l_d,ds_list_size(l_r)];
			break;
		case 111:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			ds_list_add(l_r,[74,l__g[1]]);
			break;
		case 107:
			l_d=l__g[1];
			l_i=gml_compile_curr_break;
			if(l_i>=0)ds_list_add(l_r,[67,l_d,l_i]); else return gml_compile_error("Cannot `break` here",l_d);
			break;
		case 108:
			l_d=l__g[1];
			l_i=gml_compile_curr_continue;
			if(l_i>=0)ds_list_add(l_r,[68,l_d,l_i]); else return gml_compile_error("Cannot `continue` here",l_d);
			break;
		case 105:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			ds_list_add(l_r,[69,l__g[1]]);
			break;
		case 106:
			l_d=l__g[1];
			ds_list_add(l_r,[5,l_d,0]);
			ds_list_add(l_r,[69,l_d]);
			break;
		case 96:
			if(gml_compile_node(l__g[2],l_r,true))return true;
			ds_list_add(l_r,[75,l__g[1]]);
			break;
		case 97:ds_list_add(l_r,[76,l__g[1],l_out]);break;
		default:return gml_compile_error("Cannot compile "+gml_std_Type_enumConstructor(l_q),gml_std_haxe_enum_tools_getParameter(l_q,0));
	}
	return false;
}

if(live_enabled)
function gml_compile_script(l_q){
	var l_r=ds_list_create();
	l_q[@10]=l_r;
	gml_compile_curr_script=l_q;
	gml_compile_curr_break=-1;
	gml_compile_curr_continue=-1;
	var l_e=gml_compile_node(l_q[4],l_r,false);
	gml_compile_curr_script=undefined;
	return l_e;
}

if(live_enabled)
function gml_compile_program(l_p){
	gml_compile_curr_program=l_p;
	var l_arr=l_p[2];
	var l_i;
	var l_num=array_length(l_arr);
	for(l_i=0;l_i<l_num;l_i++){
		if(gml_compile_script(l_arr[l_i]))break;
	}
	gml_compile_curr_program=undefined;
	return l_i<l_num;
}

if(live_enabled)
function gml_parser_set_gml23(l_val){
	gml_parser_gml23=l_val;
	gml_parser_has_func_literal=l_val;
	gml_parser_has_try_catch=l_val;
	gml_parser_has_constructor=l_val;
	return l_val;
}

if(live_enabled)
function gml_parser_error(l_text,l_pos,l_tkl){
	ds_list_destroy(l_tkl);
	gml_parser_error_text=gml_pos_to_string(l_pos)+": "+l_text;
	gml_parser_error_pos=l_pos;
	return undefined;
}

if(live_enabled)
function gml_parser_buf_sub(l_buf,l_str,l_start,l_end){
	var l_len=l_end-l_start;
	buffer_copy(l_buf,l_start,l_len,l_str,0);
	buffer_poke(l_str,l_len,buffer_u8,0);
	buffer_seek(l_str,buffer_seek_start,0);
	return buffer_read(l_str,buffer_string);
}

if(live_enabled)
function gml_parser_run(l_src,l_temStart){
	if(l_temStart==undefined)l_temStart=-1;
	if(false)throw argument[1];
	var l_z,l_s,l_i,l_n,l_row,l_rowStart,l_pos,l_tks;
	var l_out=ds_list_create();
	if(l_temStart>=0){
		l_row=gml_parser_tem_row;
		l_rowStart=gml_parser_tem_row_start;
		l_pos=l_temStart;
	} else {
		l_row=1;
		l_rowStart=0;
		l_pos=0;
	}
	var l_code=l_src[2];
	var l_len=string_byte_length(l_code);
	var l_buf=gml_parser_src_buf;
	var l_str=gml_parser_str_buf;
	if(l_temStart<0){
		if(buffer_get_size(l_str)<l_len)buffer_resize(l_str,l_len);
		buffer_seek(l_str,buffer_seek_start,0);
		buffer_write(l_str,buffer_string,l_code);
		if(buffer_get_size(l_buf)<l_len)buffer_resize(l_buf,l_len);
		buffer_copy(gml_parser_str_buf,0,l_len,l_buf,0);
	}
	var l_sub_buf=gml_parser_buf_sub_buf;
	var l_checkLine=false;
	var l_brackets=0;
	while(l_pos<l_len){
		var l_c=buffer_peek(l_buf,l_pos++,buffer_u8);
		switch(l_c){
			case 9:case 13:case 32:continue;
			case 10:
				if(l_checkLine){
					l_i=ds_list_size(l_out)-1;
					var l__g=l_out[|l_i];
					if(l__g[0]==0){
						if(l__g[3]==false)l_out[|l_i]=[0,l__g[1],l__g[2],true];
					}
				}
				l_row++;
				l_rowStart=l_pos;
				continue;
		}
		var l_start=l_pos-1;
		var l_d=gml_pos_create(l_src,l_row,l_pos-l_rowStart);
		var l_op;
		switch(l_c){
			case 59:ds_list_add(l_out,[3,l_d]);break;
			case 44:ds_list_add(l_out,[4,l_d]);break;
			case 46:
				l_c=buffer_peek(l_buf,l_pos,buffer_u8);
				if(l_c>=48&&l_c<=57){
					while(true){
						l_pos++;
						l_c=buffer_peek(l_buf,l_pos,buffer_u8);
						if(!(l_c>=48&&l_c<=57))break;
					}
					l_s=gml_parser_buf_sub(l_buf,l_sub_buf,l_start,l_pos);
					ds_list_add(l_out,[12,l_d,gml_std_Std_parseFloat(l_s),l_s]);
				} else ds_list_add(l_out,[5,l_d]);
				break;
			case 58:ds_list_add(l_out,[6,l_d]);break;
			case 63:ds_list_add(l_out,[7,l_d]);break;
			case 64:
				l_c=buffer_peek(l_buf,l_pos,buffer_u8);
				if(l_c==34||l_c==39){
					l_pos++;
					l_n=l_pos;
					l_i=buffer_peek(l_buf,l_pos,buffer_u8);
					if(l_c>=192){
						if(l_c>=224){
							if(l_c>=240)l_rowStart+=3; else l_rowStart+=2;
						} else l_rowStart++;
					}
					while(l_i!=l_c&&l_pos<l_len){
						if(l_i==10){
							l_row++;
							l_rowStart=l_pos;
						}
						l_pos++;
						l_i=buffer_peek(l_buf,l_pos,buffer_u8);
						if(l_c>=192){
							if(l_c>=224){
								if(l_c>=240)l_rowStart+=3; else l_rowStart+=2;
							} else l_rowStart++;
						}
					}
					if(l_pos<l_len){
						l_s=gml_parser_buf_sub(l_buf,l_sub_buf,l_n,l_pos++);
					} else {
						ds_list_destroy(l_out);
						gml_parser_error("Unclosed string",l_d,l_out);
						l_s=undefined;
					}
					ds_list_add(l_out,[13,l_d,l_s]);
				} else ds_list_add(l_out,[8,l_d]);
				break;
			case 61:
				if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
					l_pos++;
					ds_list_add(l_out,[16,l_d,64]);
				} else ds_list_add(l_out,[17,l_d,-1]);
				break;
			case 43:
				switch(buffer_peek(l_buf,l_pos,buffer_u8)){
					case 61:
						l_pos++;
						ds_list_add(l_out,[17,l_d,16]);
						break;
					case 43:
						l_pos++;
						ds_list_add(l_out,[15,l_d,true]);
						break;
					default:ds_list_add(l_out,[16,l_d,16]);
				}
				break;
			case 45:
				switch(buffer_peek(l_buf,l_pos,buffer_u8)){
					case 61:
						l_pos++;
						ds_list_add(l_out,[17,l_d,17]);
						break;
					case 45:
						l_pos++;
						ds_list_add(l_out,[15,l_d,false]);
						break;
					default:ds_list_add(l_out,[16,l_d,17]);
				}
				break;
			case 47:
				switch(buffer_peek(l_buf,l_pos,buffer_u8)){
					case 47:
						l_pos++;
						l_start=l_pos;
						while(l_pos<l_len){
							l_i=buffer_peek(l_buf,l_pos,buffer_u8);
							if(l_i==10||l_i==13)break; else l_pos++;
						}
						break;
					case 42:
						l_pos++;
						while(true){
							l_c=buffer_peek(l_buf,l_pos,buffer_u8);
							if(l_c>=192){
								if(l_c>=224){
									if(l_c>=240)l_rowStart+=3; else l_rowStart+=2;
								} else l_rowStart++;
							}
							if(l_c==10){
								l_row++;
								l_rowStart=l_pos;
							}
							l_pos++;
							if(l_pos<l_len){
								l_z=true;
								if(l_c==42){
									if(buffer_peek(l_buf,l_pos,buffer_u8)==47)l_z=false;
								}
							} else l_z=false;
							if(!l_z)break;
						}
						l_i=l_pos;
						l_z=true;
						l_pos++;
						while(++l_i<l_len){
							switch(buffer_peek(l_buf,l_i,buffer_u8)){
								case 9:case 32:continue;
								case 10:case 13:break;
								default:l_z=false;
							}
							break;
						}
						break;
					case 61:
						l_pos++;
						ds_list_add(l_out,[17,l_d,1]);
						break;
					default:
						l_op=1;
						if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
							l_pos++;
							ds_list_add(l_out,[17,l_d,l_op]);
						} else ds_list_add(l_out,[16,l_d,l_op]);
				}
				break;
			case 42:
				l_op=0;
				if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
					l_pos++;
					ds_list_add(l_out,[17,l_d,l_op]);
				} else ds_list_add(l_out,[16,l_d,l_op]);
				break;
			case 37:
				l_op=2;
				if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
					l_pos++;
					ds_list_add(l_out,[17,l_d,l_op]);
				} else ds_list_add(l_out,[16,l_d,l_op]);
				break;
			case 38:
				if(buffer_peek(l_buf,l_pos,buffer_u8)==38){
					l_pos++;
					l_op=80;
					if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
						l_pos++;
						ds_list_add(l_out,[17,l_d,l_op]);
					} else ds_list_add(l_out,[16,l_d,l_op]);
				} else {
					l_op=49;
					if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
						l_pos++;
						ds_list_add(l_out,[17,l_d,l_op]);
					} else ds_list_add(l_out,[16,l_d,l_op]);
				}
				break;
			case 124:
				if(buffer_peek(l_buf,l_pos,buffer_u8)==124){
					l_pos++;
					l_op=96;
					if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
						l_pos++;
						ds_list_add(l_out,[17,l_d,l_op]);
					} else ds_list_add(l_out,[16,l_d,l_op]);
				} else {
					l_op=48;
					if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
						l_pos++;
						ds_list_add(l_out,[17,l_d,l_op]);
					} else ds_list_add(l_out,[16,l_d,l_op]);
				}
				break;
			case 94:
				if(buffer_peek(l_buf,l_pos,buffer_u8)==94){
					l_pos++;
					l_op=65;
					if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
						l_pos++;
						ds_list_add(l_out,[17,l_d,l_op]);
					} else ds_list_add(l_out,[16,l_d,l_op]);
				} else {
					l_op=50;
					if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
						l_pos++;
						ds_list_add(l_out,[17,l_d,l_op]);
					} else ds_list_add(l_out,[16,l_d,l_op]);
				}
				break;
			case 62:
				switch(buffer_peek(l_buf,l_pos,buffer_u8)){
					case 61:
						l_pos++;
						ds_list_add(l_out,[16,l_d,69]);
						break;
					case 62:
						l_pos++;
						l_op=33;
						if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
							l_pos++;
							ds_list_add(l_out,[17,l_d,l_op]);
						} else ds_list_add(l_out,[16,l_d,l_op]);
						break;
					default:ds_list_add(l_out,[16,l_d,68]);
				}
				break;
			case 60:
				switch(buffer_peek(l_buf,l_pos,buffer_u8)){
					case 61:
						l_pos++;
						ds_list_add(l_out,[16,l_d,67]);
						break;
					case 60:
						l_pos++;
						l_op=32;
						if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
							l_pos++;
							ds_list_add(l_out,[17,l_d,l_op]);
						} else ds_list_add(l_out,[16,l_d,l_op]);
						break;
					case 62:
						l_pos++;
						l_op=65;
						if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
							l_pos++;
							ds_list_add(l_out,[17,l_d,l_op]);
						} else ds_list_add(l_out,[16,l_d,l_op]);
						break;
					default:ds_list_add(l_out,[16,l_d,66]);
				}
				break;
			case 33:
				if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
					l_pos++;
					l_op=65;
					if(buffer_peek(l_buf,l_pos,buffer_u8)==61){
						l_pos++;
						ds_list_add(l_out,[17,l_d,l_op]);
					} else ds_list_add(l_out,[16,l_d,l_op]);
				} else ds_list_add(l_out,[14,l_d,1]);
				break;
			case 126:ds_list_add(l_out,[14,l_d,2]);break;
			case 40:ds_list_add(l_out,[18,l_d]);break;
			case 41:ds_list_add(l_out,[19,l_d]);break;
			case 91:ds_list_add(l_out,[20,l_d]);break;
			case 93:ds_list_add(l_out,[21,l_d]);break;
			case 123:
				l_brackets++;
				ds_list_add(l_out,[22,l_d]);
				break;
			case 125:
				l_brackets--;
				if(l_temStart>=0&&l_brackets<0){
					if(l_temStart>=0){
						gml_parser_tem_end=l_pos;
						gml_parser_tem_row=l_row;
						gml_parser_tem_row_start=l_rowStart;
					} else if(l_src[8]==undefined){
						l_src[@8]=gml_pos_create(l_src,l_row,l_pos-l_rowStart);
					}
					l_n=ds_list_size(l_out);
					l_tks=array_create(l_n);
					for(l_i=0;l_i<l_n;l_i++){
						l_tks[@l_i]=l_out[|l_i];
					}
					gml_parser_tokens_found=ds_list_size(l_out);
					ds_list_destroy(l_out);
					return l_tks;
				} else ds_list_add(l_out,[23,l_d]);
				break;
			case 34:
				l_z=true;
				l_c=buffer_peek(l_buf,l_pos,buffer_u8);
				if(l_c>=192){
					if(l_c>=224){
						if(l_c>=240)l_rowStart+=3; else l_rowStart+=2;
					} else l_rowStart++;
				}
				while(l_pos<l_len){
					switch(l_c){
						case 34:break;
						case 10:case 13:
							ds_list_destroy(l_out);
							return gml_parser_error("Unclosed string",l_d,l_out);
						case 92:
							if(l_z){
								l_z=false;
								buffer_seek(l_str,buffer_seek_start,0);
							}
							l_s=gml_parser_buf_sub(l_buf,l_sub_buf,l_start+1,l_pos);
							buffer_write(l_str,buffer_text,l_s);
							l_pos++;
							l_c=buffer_peek(l_buf,l_pos,buffer_u8);
							if(l_c>=192){
								if(l_c>=224){
									if(l_c>=240)l_rowStart+=3; else l_rowStart+=2;
								} else l_rowStart++;
							}
							switch(l_c){
								case 114:buffer_write(l_str,buffer_u8,13);break;
								case 110:buffer_write(l_str,buffer_u8,10);break;
								case 116:buffer_write(l_str,buffer_u8,9);break;
								case 98:buffer_write(l_str,buffer_u8,8);break;
								case 102:buffer_write(l_str,buffer_u8,12);break;
								case 118:buffer_write(l_str,buffer_u8,11);break;
								case 92:buffer_write(l_str,buffer_u8,92);break;
								case 97:buffer_write(l_str,buffer_u8,7);break;
								case 10:
									l_row++;
									l_rowStart=l_pos;
									break;
								case 117:case 120:
									l_n=0;
									if(l_c==117)l_i=12; else l_i=4;
									while(l_i>=0){
										l_pos++;
										l_c=buffer_peek(l_buf,l_pos,buffer_u8);
										if(l_c>=48&&l_c<=57){
											l_c-=48;
										} else if(l_c>=65&&l_c<=70){
											l_c-=55;
										} else if(l_c>=97&&l_c<=102){
											l_c-=87;
										} else l_c=0;
										l_n|=(l_c<<l_i);
										l_i-=4;
									}
									buffer_write(l_str,buffer_u8,l_n);
									break;
								default:
									buffer_write(l_str,buffer_u8,l_c);
									if(l_c==13){
										l_pos++;
										if(buffer_peek(l_buf,l_pos,buffer_u8)==10)buffer_write(l_str,buffer_u8,10); else l_pos--;
									}
							}
							l_start=l_pos;
							l_pos++;
							l_c=buffer_peek(l_buf,l_pos,buffer_u8);
							if(l_c>=192){
								if(l_c>=224){
									if(l_c>=240)l_rowStart+=3; else l_rowStart+=2;
								} else l_rowStart++;
							}
							continue;
						default:
							l_pos++;
							l_c=buffer_peek(l_buf,l_pos,buffer_u8);
							if(l_c>=192){
								if(l_c>=224){
									if(l_c>=240)l_rowStart+=3; else l_rowStart+=2;
								} else l_rowStart++;
							}
							continue;
					}
					break;
				}
				if(l_pos>=l_len){
					ds_list_destroy(l_out);
					return gml_parser_error("Unclosed string",l_d,l_out);
				} else l_pos++;
				if(l_z){
					l_s=gml_parser_buf_sub(l_buf,l_sub_buf,l_start+1,l_pos-1);
				} else {
					l_s=gml_parser_buf_sub(l_buf,l_sub_buf,l_start+1,l_pos-1);
					buffer_write(l_str,buffer_text,l_s);
					buffer_write(l_str,buffer_u8,0);
					buffer_seek(l_str,buffer_seek_start,0);
					l_s=buffer_read(l_str,buffer_string);
				}
				ds_list_add(l_out,[13,l_d,l_s]);
				break;
			case 39:
				ds_list_destroy(l_out);
				return gml_parser_error("Single quotes are not allowed for strings.",l_d,l_out);
			case 35:
				l_start=l_pos;
				while(l_pos<l_len){
					l_c=buffer_peek(l_buf,l_pos,buffer_u8);
					if(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c>=48&&l_c<=57)l_pos++; else break;
				}
				switch(gml_parser_buf_sub(l_buf,l_sub_buf,l_start,l_pos)){
					case "define":
						l_start=l_pos;
						while(l_pos<l_len){
							l_c=buffer_peek(l_buf,l_pos,buffer_u8);
							if(l_c==32||l_c==9)l_pos++; else break;
						}
						if((l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90)&&l_pos<l_len){
							l_start=l_pos;
							l_pos++;
							while(l_pos<l_len){
								l_c=buffer_peek(l_buf,l_pos,buffer_u8);
								if(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c>=48&&l_c<=57)l_pos++; else break;
							}
							ds_list_add(l_out,[0,l_d,gml_parser_buf_sub(l_buf,l_sub_buf,l_start,l_pos),false]);
							l_checkLine=true;
						} else {
							ds_list_destroy(l_out);
							return gml_parser_error("Expected a script name",l_d,l_out);
						}
						break;
					case "macro":ds_list_add(l_out,[1,l_d]);break;
					case "endregion":case "region":
						while(l_pos<l_len){
							l_i=buffer_peek(l_buf,l_pos,buffer_u8);
							if(l_i==10||l_i==13)break; else l_pos++;
						}
						break;
					default:
						ds_list_add(l_out,[2,l_d]);
						l_pos=l_start;
				}
				break;
			case 36:
				l_i=0;
				while(l_pos<l_len){
					l_c=buffer_peek(l_buf,l_pos,buffer_u8);
					if(l_c>=48&&l_c<=57){
						l_i=((l_i<<4)|l_c-48);
					} else if(l_c>=97&&l_c<=102){
						l_i=((l_i<<4)|l_c-87);
					} else if(l_c>=65&&l_c<=70){
						l_i=((l_i<<4)|l_c-55);
					} else break;
					l_pos++;
				}
				ds_list_add(l_out,[12,l_d,l_i,gml_parser_buf_sub(l_buf,l_sub_buf,l_start,l_pos)]);
				break;
			default:
				if(l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c==95){
					while(l_pos<l_len){
						l_c=buffer_peek(l_buf,l_pos,buffer_u8);
						if(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c>=48&&l_c<=57)l_pos++; else break;
					}
					l_s=gml_parser_buf_sub(l_buf,l_sub_buf,l_start,l_pos);
					switch(l_s){
						case "global":ds_list_add(l_out,[9,l_d,0]);break;
						case "true":ds_list_add(l_out,[12,l_d,1,undefined]);break;
						case "false":ds_list_add(l_out,[12,l_d,0,undefined]);break;
						case "all":ds_list_add(l_out,[12,l_d,-3,undefined]);break;
						case "noone":ds_list_add(l_out,[12,l_d,-4,undefined]);break;
						case "undefined":ds_list_add(l_out,[11,l_d]);break;
						case "begin":ds_list_add(l_out,[22,l_d]);break;
						case "end":ds_list_add(l_out,[23,l_d]);break;
						case "globalvar":ds_list_add(l_out,[9,l_d,1]);break;
						case "var":ds_list_add(l_out,[9,l_d,2]);break;
						case "enum":ds_list_add(l_out,[9,l_d,3]);break;
						case "if":ds_list_add(l_out,[9,l_d,4]);break;
						case "then":ds_list_add(l_out,[9,l_d,5]);break;
						case "else":ds_list_add(l_out,[9,l_d,6]);break;
						case "switch":ds_list_add(l_out,[9,l_d,7]);break;
						case "case":ds_list_add(l_out,[9,l_d,8]);break;
						case "default":ds_list_add(l_out,[9,l_d,9]);break;
						case "for":ds_list_add(l_out,[9,l_d,14]);break;
						case "repeat":ds_list_add(l_out,[9,l_d,10]);break;
						case "while":ds_list_add(l_out,[9,l_d,11]);break;
						case "do":ds_list_add(l_out,[9,l_d,13]);break;
						case "until":ds_list_add(l_out,[9,l_d,12]);break;
						case "with":ds_list_add(l_out,[9,l_d,15]);break;
						case "exit":ds_list_add(l_out,[9,l_d,19]);break;
						case "return":ds_list_add(l_out,[9,l_d,18]);break;
						case "break":ds_list_add(l_out,[9,l_d,17]);break;
						case "continue":ds_list_add(l_out,[9,l_d,16]);break;
						case "try":if(gml_parser_has_try_catch)ds_list_add(l_out,[9,l_d,21]); else ds_list_add(l_out,[10,l_d,l_s]);break;
						case "catch":if(gml_parser_has_try_catch)ds_list_add(l_out,[9,l_d,22]); else ds_list_add(l_out,[10,l_d,l_s]);break;
						case "throw":if(gml_parser_has_try_catch)ds_list_add(l_out,[9,l_d,23]); else ds_list_add(l_out,[10,l_d,l_s]);break;
						case "new":if(gml_parser_has_constructor)ds_list_add(l_out,[9,l_d,25]); else ds_list_add(l_out,[10,l_d,l_s]);break;
						case "function":if(gml_parser_has_func_literal)ds_list_add(l_out,[9,l_d,24]); else ds_list_add(l_out,[10,l_d,l_s]);break;
						case "div":ds_list_add(l_out,[16,l_d,3]);break;
						case "mod":ds_list_add(l_out,[16,l_d,2]);break;
						case "and":ds_list_add(l_out,[16,l_d,80]);break;
						case "or":ds_list_add(l_out,[16,l_d,96]);break;
						case "xor":ds_list_add(l_out,[16,l_d,65]);break;
						case "not":ds_list_add(l_out,[14,l_d,1]);break;
						case "argument":ds_list_add(l_out,[9,l_d,26]);break;
						case "argument_count":ds_list_add(l_out,[9,l_d,27]);break;
						default:
							if(gml_std_StringTools_startsWith(l_s,"argument")){
								var l_s_8=gml_std_string_substring(l_s,8);
								if(string_digits(l_s_8)==l_s_8)ds_list_add(l_out,[24,l_d,gml_std_Std_parseInt(l_s_8)]); else ds_list_add(l_out,[10,l_d,l_s]);
							} else ds_list_add(l_out,[10,l_d,l_s]);
					}
				} else if(l_c>=48&&l_c<=57||l_c==46){
					if(buffer_peek(l_buf,l_pos,buffer_u8)==120){
						l_pos++;
						l_i=0;
						while(l_pos<l_len){
							l_c=buffer_peek(l_buf,l_pos,buffer_u8);
							if(l_c>=48&&l_c<=57){
								l_i=((l_i<<4)|l_c-48);
							} else if(l_c>=97&&l_c<=102){
								l_i=((l_i<<4)|l_c-87);
							} else if(l_c>=65&&l_c<=70){
								l_i=((l_i<<4)|l_c-55);
							} else break;
							l_pos++;
						}
						ds_list_add(l_out,[12,l_d,l_i,gml_parser_buf_sub(l_buf,l_sub_buf,l_start,l_pos)]);
					} else {
						l_pos--;
						l_z=false;
						l_s=undefined;
						while(l_pos<l_len){
							l_c=buffer_peek(l_buf,l_pos,buffer_u8);
							if(l_c==46){
								if(l_z){
									ds_list_destroy(l_out);
									return gml_parser_error("Extra dot in a number",l_d,l_out);
								} else {
									l_pos++;
									l_c=buffer_peek(l_buf,l_pos,buffer_u8);
									if(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90){
										l_s=gml_parser_buf_sub(l_buf,l_sub_buf,l_start,l_pos-1);
										ds_list_add(l_out,[12,l_d,gml_std_Std_parseFloat(l_s),l_s]);
										l_d=gml_pos_create(l_src,l_row,l_pos-l_rowStart);
										ds_list_add(l_out,[5,l_d]);
										break;
									}
									l_z=true;
								}
							} else if(l_c>=48&&l_c<=57){
								l_pos++;
							} else break;
						}
						if(l_s==undefined){
							while(buffer_peek(l_buf,l_start,buffer_u8)==48){
								l_start++;
								if(l_start>=l_pos){
									l_start--;
									break;
								} else if(buffer_peek(l_buf,l_start,buffer_u8)==46){
									l_start--;
									break;
								}
							}
							l_s=gml_parser_buf_sub(l_buf,l_sub_buf,l_start,l_pos);
							ds_list_add(l_out,[12,l_d,gml_std_Std_parseFloat(l_s),l_s]);
						}
					}
				} else {
					var l_text="Unexpected character `"+chr(l_c)+"`";
					ds_list_destroy(l_out);
					return gml_parser_error(l_text,l_d,l_out);
				}
		}
	}
	if(l_temStart>=0){
		gml_parser_tem_end=l_pos;
		gml_parser_tem_row=l_row;
		gml_parser_tem_row_start=l_rowStart;
	} else if(l_src[8]==undefined){
		l_src[@8]=gml_pos_create(l_src,l_row,l_pos-l_rowStart);
	}
	l_n=ds_list_size(l_out);
	l_tks=array_create(l_n);
	for(l_i=0;l_i<l_n;l_i++){
		l_tks[@l_i]=l_out[|l_i];
	}
	gml_parser_tokens_found=ds_list_size(l_out);
	ds_list_destroy(l_out);
	return l_tks;
}

if(live_enabled)
function gml_program_create(l_sources){
	var this=[mt_gml_program];
	array_copy(this,1,mq_gml_program,1,16);
	this[@13]=false;
	this[@11]=undefined;
	this[@10]=undefined;
	this[@9]=undefined;
	this[@8]=ds_list_create();
	this[@7]=ds_list_create();
	this[@6]=haxe_ds_string_map_create();
	this[@5]=haxe_ds_string_map_create();
	this[@4]=[];
	this[@3]=haxe_ds_string_map_create();
	this[@2]=[];
	this[@1]=undefined;
	this[@1]=l_sources;
	var l_builders=[];
	var l__g=0;
	while(l__g<array_length(l_sources)){
		var l_src=l_sources[l__g];
		l__g++;
		var l_b=gml_builder_create(this,l_src);
		gml_std_gml_internal_ArrayImpl_push(l_builders,l_b);
		if(l_b[9]==undefined){
			var l_main=l_src[3];
			var l__g1=0;
			var l__g2=l_b[5];
			while(l__g1<array_length(l__g2)){
				var l_scr=l__g2[l__g1];
				l__g1++;
				if(haxe_ds_basic_map_exists(this[3],l_scr[1])){
					if(l_scr[1]==l_main){
						var l__g3=haxe_ds_basic_map_get(this[3],l_main)[4];
						var l_tmp;
						if(l__g3[0]==92)l_tmp=array_length(l__g3[2])==0; else l_tmp=false;
						if(l_tmp){
							var l_w=this[2];
							var l_i=0;
							var l_n=array_length(l_w);
							while(l_i<l_n){
								if(l_w[l_i][1]==l_main){
									while(++l_i<l_n){
										l_w[@l_i-1]=l_w[l_i];
									}
									l_w[@l_n-1]=l_scr;
								} else l_i++;
							}
							haxe_ds_basic_map_set(this[3],l_scr[1],l_scr);
						} else {
							gml_program_error(this,"Cannot override prefix-script \""+l_main+"\" because it is not empty",l_scr[2]);
							return this;
						}
					} else {
						gml_program_error(this,"Script "+l_scr[1]+" is already defined at "+gml_pos_to_string(haxe_ds_basic_map_get(this[3],l_scr[1])[2]),l_scr[2]);
						return this;
					}
				} else {
					gml_std_gml_internal_ArrayImpl_push(this[2],l_scr);
					haxe_ds_basic_map_set(this[3],l_scr[1],l_scr);
				}
			}
			var l__g5=0;
			var l__g6=l_b[6];
			while(l__g5<array_length(l__g6)){
				var l_e=l__g6[l__g5];
				l__g5++;
				gml_std_gml_internal_ArrayImpl_push(this[4],l_e);
				haxe_ds_basic_map_set(this[5],l_e[1],l_e);
			}
			var l_mcrNames=l_b[7];
			var l_mcrNodes=l_b[8];
			var l_mcrMap=this[6];
			var l_i1=0;
			for(var l__g8=array_length(l_mcrNames);l_i1<l__g8;l_i1++){
				haxe_ds_basic_map_set(l_mcrMap,l_mcrNames[l_i1],l_mcrNodes[l_i1]);
			}
		} else if(l_src[5]){
			var l_errorNext=l_b[9];
			if(this[11]!=undefined)this[@11]+="\n"+l_errorNext; else this[@11]=l_errorNext;
		} else {
			this[@11]=l_b[9];
			this[@12]=l_b[10];
			return this;
		}
	}
	var l_i;
	var l_n=array_length(this[2]);
	for(l_i=0;l_i<l_n;l_i++){
		this[2][l_i][@3]=gml_script_index_offset+l_i;
	}
	if(gml_program_check(this)){
		gml_program_seek_inst=undefined;
		return this;
	} else if(gml_compile_program(this)){
		if(this[11]!=undefined)this[@11]+="\n"+gml_compile_error_text; else this[@11]=gml_compile_error_text;
		this[@12]=gml_compile_error_pos;
		return this;
	}
	this[@13]=true;
	return this;
}

if(live_enabled)
function gml_program_error(this,l_text,l_d){
	var l_pos=l_d;
	this[@11]=gml_pos_to_string(l_pos)+" "+l_text;
	this[@12]=l_pos;
	return true;
}

if(live_enabled)
function gml_program_destroy(this){
	var l__g=0;
	var l__g1=this[2];
	while(l__g<array_length(l__g1)){
		var l_q=l__g1[l__g];
		l__g++;
		gml_script_destroy(l_q);
	}
	this[@2]=undefined;
	this[@3]=undefined;
	this[@5]=undefined;
	this[@6]=undefined;
	ds_list_destroy(this[7]);
	this[@7]=undefined;
	ds_list_destroy(this[8]);
	this[@8]=undefined;
}

if(live_enabled)
function gml_program_call_v(this,l_name,l_args1,l_copy){
	if(l_copy==undefined)l_copy=true;
	if(false)throw argument[2];
	if(haxe_ds_basic_map_exists(this[3],l_name)){
		var l_scr=haxe_ds_basic_map_get(this[3],l_name);
		var l_locals=array_create(l_scr[7]);
		if(l_copy)l_args1=gml_value_list_copy(l_args1);
		var l_argc=array_length(l_args1);
		var l_scrArgc=l_scr[8];
		if(l_argc<l_scrArgc){
			array_resize(l_args1,l_scrArgc);
			var l_i=l_argc;
			for(var l__g1=l_scrArgc;l_i<l__g1;l_i++){
				l_args1[@l_i]=undefined;
			}
		}
		var l_th=gml_thread_create(this,l_scr[10],l_args1,l_locals);
		l_th[@2]=this[9];
		l_th[@5]=this[10];
		gml_thread_exec(l_th);
		return l_th;
	} else return undefined;
}

if(live_enabled)
function gml_program_print(this){
	var l_r="";
	var l_i=0;
	for(var l__g1=array_length(this[2]);l_i<l__g1;l_i++){
		if(l_i>0)l_r+="\n";
		var l_scr=this[2][l_i];
		l_r+="#define "+l_scr[1]+"\n"+gml_action_list_print(l_scr[10]);
	}
	return l_r;
}

if(live_enabled)
function gml_program_seek(this,l_f,l_st){
	if(l_st==undefined)l_st=false;
	if(false)throw argument[1];
	var l_w;
	if(l_st)l_w=ds_list_create(); else l_w=undefined;
	gml_program_seek_func=l_f;
	var l_m=this[2];
	var l_n=array_length(l_m);
	var l_i=0;
	while(l_i<l_n){
		var l_scr=l_m[l_i];
		gml_program_seek_script=l_scr;
		var l_scrNode=l_scr[4];
		if(l_scrNode!=undefined&&l_f(l_scrNode,l_w))break; else l_i++;
	}
	gml_program_seek_script=undefined;
	gml_program_seek_func=undefined;
	if(l_st)ds_list_destroy(l_w);
	return l_i<l_n;
}

if(live_enabled)
function gml_program_check(this){
	gml_program_seek_inst=this;
	if(gml_program_seek(this,gml_seek_arguments_proc,false))return true;
	if(gml_program_seek(this,gml_seek_locals_proc,false))return true;
	if(gml_program_seek(this,gml_seek_idents_proc,true))return true;
	if(gml_program_seek(this,gml_seek_fields_proc,false))return true;
	if(gml_program_seek(this,gml_seek_calls_proc,false))return true;
	if(gml_seek_enum_values_proc())return true;
	if(gml_program_seek(this,gml_seek_enum_fields_proc,false))return true;
	if(gml_seek_eval_opt())return true;
	if(gml_program_seek(this,gml_seek_self_fields_proc,false))return true;
	if(gml_program_seek(this,gml_seek_alarms_proc,false))return true;
	if(gml_program_seek(this,gml_seek_adjfix_proc,true))return true;
	if(gml_program_seek(this,gml_seek_set_op_proc,true))return true;
	gml_program_seek_inst=undefined;
	return false;
}

if(live_enabled)
function gml_program_eval(this,l_q){
	var l_r,l_v;
	var l__g=l_q;
	switch(l__g[0]){
		case 1:l_r=l__g[2];break;
		case 2:l_r=l__g[2];break;
		case 41:
			var l__hx_tmp=l__g[2];
			if(l__hx_tmp[0]==7){
				var l_f=l__g[3];
				var l_s=l__hx_tmp[2];
				var l_d=l__g[1];
				var l_e=haxe_ds_basic_map_get(this[5],l_s);
				if(l_e!=undefined){
					var l_c=haxe_ds_basic_map_get(l_e[4],l_f);
					if(l_c!=undefined){
						l_r=l_c[4];
						if(l_r==undefined)return gml_program_error(this,"Value of "+l_s+"."+l_f+" is not known here",l_d);
					} else return gml_program_error(this,"Enum `"+l_s+"` does not contain field `"+l_f+"`",l_d);
				} else return gml_program_error(this,"Could not find enum "+l_s,l_d);
			} else return gml_program_error(this,"Can not evaluate this compile-time",gml_std_haxe_enum_tools_getParameter(l_q,0));
			break;
		case 30:
			if(gml_program_eval(this,l__g[3]))return true;
			l_r=this[16];
			if(gml_program_eval(this,l__g[4]))return true;
			l_v=this[16];
			switch(l__g[2]){
				case 16:l_r+=l_v;break;
				case 17:l_r-=l_v;break;
				case 0:l_r*=l_v;break;
				case 1:l_r/=l_v;break;
				case 2:l_r%=l_v;break;
				case 3:l_r=(l_r div l_v);break;
				case 49:l_r&=l_v;break;
				case 48:l_r|=l_v;break;
				case 50:l_r^=l_v;break;
				case 32:l_r=l_r<<l_v;break;
				case 33:l_r=l_r>>l_v;break;
				default:return gml_program_error(this,"Can not evaluate this compile-time",gml_std_haxe_enum_tools_getParameter(l_q,0));
			}
			break;
		default:return gml_program_error(this,"Can not evaluate this compile-time",gml_std_haxe_enum_tools_getParameter(l_q,0));
	}
	this[@16]=l_r;
	return false;
}

if(live_enabled)
function gml_std_haxe_enum_tools_getParameter(l_q,l_i){
	if(is_struct(l_q)){
		var l_params=l_q.__enumParams__;
		return variable_struct_get(l_q,l_params[l_i]);
	} else if(is_array(l_q)){
		return l_q[l_i+1];
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_haxe_enum_tools_getParameterCount(l_q){
	if(is_struct(l_q)){
		return array_length(l_q.__enumParams__);
	} else if(is_array(l_q)){
		return array_length(l_q)-1;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_haxe_enum_tools_setParameter(l_q,l_i,l_value){
	if(is_struct(l_q)){
		var l_params=l_q.__enumParams__;
		variable_struct_set(l_q,l_params[l_i],l_value);
	} else if(is_array(l_q)){
		l_q[@l_i+1]=l_value;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_haxe_enum_tools_setTo(l_q,l_v){
	if(is_struct(l_q)){
		var l_qp=l_q.__enumParams__;
		var l_vp=l_v.__enumParams__;
		var l_n=array_length(l_qp);
		var l_i=-1;
		while(++l_i<l_n){
			variable_struct_set(l_q,l_qp[l_i],undefined);
		}
		l_i=-1;
		l_n=array_length(l_vp);
		while(++l_i<l_n){
			variable_struct_set(l_q,l_vp[l_i],variable_struct_get(l_v,l_vp[l_i]));
		}
		l_q.__enumParams__=l_vp;
		l_q.__enumIndex__=l_v.__enumIndex__;
	} else if(is_array(l_q)){
		var l_qx=l_q;
		var l_vx=l_v;
		var l_n=array_length(l_vx);
		if(array_length(l_qx)!=l_n)array_resize(l_qx,l_n);
		array_copy(l_qx,0,l_vx,0,l_n);
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_Std_stringify(l_value){
	if(l_value==undefined)return "null";
	if(is_string(l_value))return l_value;
	var l_n,l_i,l_s;
	if(is_struct(l_value)){
		var l_e=variable_struct_get(l_value,"__enum__");
		if(l_e==undefined)return string(l_value);
		var l_ects=l_e.h_constructors;
		if(l_ects!=undefined){
			l_i=l_value.__enumIndex__;
			if(l_i>=0&&l_i<array_length(l_ects))l_s=l_ects[l_i]; else l_s="?";
		} else {
			l_s=instanceof(l_value);
			if(string_copy(l_s,1,3)=="mc_")l_s=string_delete(l_s,1,3);
			l_n=string_length(l_e.h_name);
			if(string_copy(l_s,1,l_n)==l_e.h_name)l_s=string_delete(l_s,1,l_n+1);
		}
		l_s+="(";
		var l_fields=l_value.__enumParams__;
		l_n=array_length(l_fields);
		for(l_i=-1;++l_i<l_n;l_s+=gml_std_Std_stringify(variable_struct_get(l_value,l_fields[l_i]))){
			if(l_i>0)l_s+=", ";
		}
		return l_s+")";
	}
	if(is_real(l_value)){
		l_s=string_format(l_value,0,16);
		if(os_browser!=browser_not_a_browser){
			l_n=string_length(l_s);
			l_i=l_n;
			while(l_i>0){
				switch(string_ord_at(l_s,l_i)){
					case 48:
						l_i--;
						continue;
					case 46:l_i--;break;
				}
				break;
			}
		} else {
			l_n=string_byte_length(l_s);
			l_i=l_n;
			while(l_i>0){
				switch(string_byte_at(l_s,l_i)){
					case 48:
						l_i--;
						continue;
					case 46:l_i--;break;
				}
				break;
			}
		}
		return string_copy(l_s,1,l_i);
	}
	return string(l_value);
}

if(live_enabled)
function gml_std_Std_parseFloat(l_s){
	var l_l=string_length(l_s);
	var l_n=string_length(string_digits(l_s));
	var l_p=string_pos(".",l_s);
	var l_e=string_pos("e",l_s);
	if(l_e==0)l_e=string_pos("E",l_s);
	switch(l_e){
		case 0:break;
		case 1:return NaN;
		case 2:if(l_p>0)return NaN;break;
		default:if(l_p>0&&l_e<l_p)return NaN;
	}
	if(l_e!=0&&l_e<l_l-1)switch(string_ord_at(l_s,l_e+1)){
		case 43:case 45:l_l--;break;
	}
	if(l_n&&l_n==l_l-(string_ord_at(l_s,1)==45)-(l_p!=0)-(l_e!=0))return real(l_s); else return NaN;
}

if(live_enabled)
function gml_std_Std_parseInt(l_value){
	var l_n=string_length(string_digits(l_value));
	if(l_n&&l_n==string_length(l_value)-(string_ord_at(l_value,1)==45))return real(l_value); else return undefined;
}

if(live_enabled)
function gml_std_string_pos_ext_haxe(this,l_sub,l_startPos){
	if(l_startPos==undefined)l_startPos=0;
	if(false)throw argument[1];
	var l_out=string_pos(l_sub,(l_startPos>0?string_delete(this,1,l_startPos):this));
	if(l_out>0)return l_out+l_startPos-1; else return -1;
}

if(live_enabled)
function gml_std_string_pos_last(this,l_sub,l_startPos){
	if(false)throw argument[1];
	var l_out=-1;
	if(l_startPos==undefined)l_startPos=string_length(this);
	while(true){
		var l_p=gml_std_string_pos_ext_haxe(this,l_sub,l_out+1);
		if(l_p==-1||l_p>l_startPos)break;
		l_out=l_p;
	}
	return l_out;
}

if(live_enabled)
function gml_std_string_split(this,l_del){
	var l_str=this;
	var l_num=0;
	var l_arr=array_create(string_count(l_del,l_str)+1);
	for(var l_pos=string_pos(l_del,l_str);l_pos>0;l_pos=string_pos(l_del,l_str)){
		l_arr[@l_num]=string_copy(l_str,1,l_pos-1);
		l_num++;
		l_str=string_delete(l_str,1,l_pos);
	}
	l_arr[@l_num]=l_str;
	return l_arr;
}

if(live_enabled)
function gml_std_string_substr(this,l_pos,l_len){
	if(false)throw argument[1];
	if(l_pos<0)l_pos+=string_length(this);
	if(l_len==undefined)return string_delete(this,1,l_pos); else return string_copy(this,1+l_pos,l_len);
}

if(live_enabled)
function gml_std_string_substring(this,l_start,l_end){
	if(false)throw argument[1];
	if(l_end==undefined){
		if(l_start>0)return string_delete(this,1,l_start); else return this;
	}
	if(l_start<0)l_start=0;
	if(l_end<0)l_end=0;
	if(l_start>l_end){
		var l_tmp=l_start;
		l_start=l_end;
		l_end=l_tmp;
	}
	var l_len=string_length(this);
	if(l_start>=l_len){
		return "";
	} else if(l_end>=l_len){
		if(l_start>0)return string_delete(this,1,l_start); else return this;
	} else return string_copy(this,l_start+1,l_end-l_start);
}

if(live_enabled)
function gml_std_StringTools_startsWith(l_s,l_start){
	var l_n=string_length(l_start);
	return string_length(l_s)>=l_n&&string_copy(l_s,1,l_n)==l_start;
}

if(live_enabled)
function gml_std_StringTools_trim(l_s){
	var l_char;
	var l_len=string_length(l_s);
	var l_till=l_len;
	while(l_till>0){
		l_char=string_ord_at(l_s,l_till);
		if(l_char==32||l_char>8&&l_char<14)l_till--; else break;
	}
	if(l_till<l_len)l_s=string_copy(l_s,1,l_till);
	var l_start=1;
	while(l_start<=l_till){
		l_char=string_ord_at(l_s,l_start);
		if(l_char==32||l_char>8&&l_char<14)l_start++; else break;
	}
	if(l_start>1)l_s=string_delete(l_s,1,l_start-1);
	return l_s;
}

if(live_enabled)
function gml_std_Type_getEnumConstructs(l_e){
	return gml_std_gml_internal_ArrayImpl_copy(l_e.h_constructors);
}

if(live_enabled)
function gml_std_Type_enumConstructor(l_e){
	var l_et,l_i;
	var l_isStruct1=is_struct(l_e);
	if(l_isStruct1){
		l_et=l_e.__enum__;
		l_i=l_e.__enumIndex__;
	} else return string(l_e);
	var l_cs=l_et.h_constructors;
	if(l_cs!=undefined&&l_i>=0&&l_i<array_length(l_cs)){
		return l_cs[l_i];
	} else {
		if(l_isStruct1){
			var l_s=instanceof(l_e);
			if(string_copy(l_s,1,3)=="mc_")l_s=string_delete(l_s,1,3);
			l_i=string_length(l_et.h_name);
			if(string_copy(l_s,1,l_i)==l_et.h_name&&string_ord_at(l_s,l_i+1)==95)l_s=string_delete(l_s,1,l_i+1);
			return l_s;
		}
		return string(l_e);
	}
}

if(live_enabled)
function gml_enum_create(l_name,l_pos){
	var this=[mt_gml_enum];
	array_copy(this,1,mq_gml_enum,1,5);
	this[@5]=false;
	this[@4]=haxe_ds_string_map_create();
	this[@3]=[];
	this[@1]=l_name;
	this[@2]=l_pos;
	return this;
}

if(live_enabled)
function gml_enum_create_builtin(l_name){
	var l_e=gml_enum_create(l_name,gml_pos_create(gml_source_create("built-in",""),0,0));
	haxe_ds_basic_map_set(gml_enum_map,l_name,l_e);
	return l_e;
}

if(live_enabled)
function gml_enum_add(this,l_name,l_val){
	var l_ctr=gml_enum_ctr_create(l_name,this[2],[1,this[2],l_val,string(l_val)]);
	l_ctr[@4]=l_val;
	gml_std_gml_internal_ArrayImpl_push(this[3],l_ctr);
	haxe_ds_basic_map_set(this[4],l_name,l_ctr);
}

if(live_enabled)
function gml_enum_print(this){
	var l_r="(enum "+this[1]+" { ";
	var l_z=false;
	var l__g=0;
	var l__g1=this[3];
	while(l__g<array_length(l__g1)){
		var l_ctr=l__g1[l__g];
		l__g++;
		if(l_z)l_r+=", "; else l_z=true;
		l_r+=l_ctr[1]+" = "+gml_std_Std_stringify(l_ctr[4]);
	}
	return l_r+" })";
}

if(live_enabled)
function gml_enum_ctr_create(l_name,l_pos,l_node){
	var this=[mt_gml_enum_ctr];
	array_copy(this,1,mq_gml_enum_ctr,1,4);
	this[@4]=undefined;
	this[@1]=l_name;
	this[@2]=l_pos;
	this[@3]=l_node;
	return this;
}

function gml_macro_create(l_name,l_node,l_isExpr,l_isStat){
	var this=[mt_gml_macro];
	array_copy(this,1,mq_gml_macro,1,4);
	if(live_enabled){
		this[@1]=l_name;
		this[@2]=l_node;
		this[@3]=l_isExpr;
		this[@4]=l_isStat;
	}
	return this;
}

if(live_enabled)
function gml_node_get_pos_string(l_q){
	var l_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
	return gml_pos_to_string(l_pos);
}

if(live_enabled)
function gml_node_unpack(l_q){
	while(l_q!=undefined){
		var l__g=l_q;
		if(l__g[0]==92){
			var l__g1=l__g[2];
			if(array_length(l__g1)==1)l_q=l__g1[0]; else return l_q;
		} else return l_q;
	}
	return l_q;
}

if(live_enabled)
function gml_node_is_simple(l_q){
	var l_i,l_n,l_w;
	var l__g=l_q;
	switch(l__g[0]){
		case 1:return true;
		case 2:return true;
		case 0:return true;
		case 35:return true;
		case 38:return true;
		case 4:
			l_w=l__g[2];
			l_n=array_length(l_w);
			l_i=0;
			while(l_i<l_n){
				if(gml_node_is_simple(l_w[l_i]))l_i++; else break;
			}
			return l_i>=l_n;
		case 5:
			l_w=l__g[3];
			l_n=array_length(l_w);
			l_i=0;
			while(l_i<l_n){
				if(gml_node_is_simple(l_w[l_i]))l_i++; else break;
			}
			return l_i>=l_n;
		case 8:return true;
		case 9:return true;
		case 41:return gml_node_is_simple(l__g[2]);
		case 56:return gml_node_is_simple(l__g[2])&&gml_node_is_simple(l__g[3]);
		default:return false;
	}
}

if(live_enabled)
function gml_node_is_statement(l_q){
	switch(l_q[0]){
		case 17:return true;
		case 31:return true;
		case 91:return true;
		case 27:return true;
		case 28:return true;
		case 92:return true;
		case 93:return true;
		case 95:return true;
		case 102:return true;
		case 98:return true;
		case 101:return true;
		case 100:return true;
		case 99:return true;
		case 103:return true;
		case 107:return true;
		case 108:return true;
		case 106:return true;
		case 105:return true;
		case 96:return true;
		case 109:return true;
		case 110:return true;
		case 111:return true;
		default:return false;
	}
}

if(live_enabled)
function gml_node_is_in_block(l_q,l_p){
	if(l_p==undefined)return false;
	var l__g=l_p;
	switch(l__g[0]){
		case 92:return true;
		case 93:return l_q!=l__g[2];
		case 98:return l_q!=l__g[2];
		case 100:return l_q!=l__g[3];
		case 99:return l_q!=l__g[3];
		case 101:return l_q!=l__g[2];
		case 102:return l_q!=l__g[3];
		case 95:return l_q!=l__g[2];
		default:return false;
	}
}

if(live_enabled)
function gml_node_to_value(l_q){
	var l__g=l_q;
	switch(l__g[0]){
		case 0:return [undefined];
		case 1:return [l__g[2]];
		case 2:return [l__g[2]];
		case 3:return [l__g[3][4]];
		default:return undefined;
	}
}

if(live_enabled)
function gml_node_has_value(l_q){
	switch(l_q[0]){
		case 0:return true;
		case 1:return true;
		case 2:return true;
		case 3:return true;
		default:return false;
	}
}

if(live_enabled)
function gml_node_equals_list(l_a,l_b){
	var l_n=array_length(l_a);
	if(array_length(l_b)!=l_n)return false;
	var l_i=0;
	while(l_i<l_n){
		if(gml_node_equals(l_a[l_i],l_b[l_i]))l_i++; else return false;
	}
	return true;
}

if(live_enabled)
function gml_node_equals(l_a,l_b){
	if(l_a[0]!=l_b[0])return false;
	var l_i,l_n;
	var l__g=l_a;
	switch(l__g[0]){
		case 9:return true;
		case 106:return true;
		case 10:return true;
		case 109:return true;
		case 8:return true;
		case 97:return true;
		case 108:return true;
		case 16:return true;
		case 107:return true;
		case 0:return true;
		case 37:
			var l__g1=l_b;
			if(l__g1[0]==37){
				var l_b_val=l__g1[4];
				var l_b_op=l__g1[3];
				return l__g[2]==l__g1[2]&&l__g[3]==l_b_op&&gml_node_equals(l__g[4],l_b_val);
			} else return false;
		case 11:
			var l__g1=l_b;
			if(l__g1[0]==11)return l__g[2]==l__g1[2]; else return false;
		case 94:
			var l__g1=l_b;
			if(l__g1[0]==94){
				var l_b_not=l__g1[4];
				var l_b_then=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_then)&&gml_node_equals(l__g[4],l_b_not);
			} else return false;
		case 3:
			var l__g1=l_b;
			if(l__g1[0]==3){
				var l_b_ctr=l__g1[3];
				return l__g[2]==l__g1[2]&&l__g[3]==l_b_ctr;
			} else return false;
		case 28:
			var l__g1=l_b;
			if(l__g1[0]==28){
				var l_b_inc=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_inc;
			} else return false;
		case 25:
			var l__g1=l_b;
			if(l__g1[0]==25){
				var l_b_args=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals_list(l__g[3],l_b_args);
			} else return false;
		case 7:
			var l__g1=l_b;
			if(l__g1[0]==7)return l__g[2]==l__g1[2]; else return false;
		case 2:
			var l__g1=l_b;
			if(l__g1[0]==2)return l__g[2]==l__g1[2]; else return false;
		case 22:
			var l__g1=l_b;
			if(l__g1[0]==22){
				var l_b_args=l__g1[4];
				var l_b_prop=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_prop&&gml_node_equals_list(l__g[4],l_b_args);
			} else return false;
		case 23:
			var l__g1=l_b;
			if(l__g1[0]==23){
				var l_b_args=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals_list(l__g[3],l_b_args);
			} else return false;
		case 24:
			var l__g1=l_b;
			if(l__g1[0]==24){
				var l_b_args=l__g1[4];
				var l_b_s=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_s&&gml_node_equals_list(l__g[4],l_b_args);
			} else return false;
		case 76:
			var l__g1=l_b;
			if(l__g1[0]==76){
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id);
			} else return false;
		case 26:
			var l__g1=l_b;
			if(l__g1[0]==26)return l__g[2]==l__g1[2]; else return false;
		case 27:
			var l__g1=l_b;
			if(l__g1[0]==27){
				var l_b_inc=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_inc;
			} else return false;
		case 85:
			var l__g1=l_b;
			if(l__g1[0]==85){
				var l_b_inc=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&l__g[4]==l_b_inc;
			} else return false;
		case 29:
			var l__g1=l_b;
			if(l__g1[0]==29){
				var l_b_o=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_o;
			} else return false;
		case 30:
			var l__g1=l_b;
			if(l__g1[0]==30){
				var l_b_b=l__g1[4];
				var l_b_a=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_a)&&gml_node_equals(l__g[4],l_b_b);
			} else return false;
		case 31:
			var l__g1=l_b;
			if(l__g1[0]==31){
				var l_b_b=l__g1[4];
				var l_b_a=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_a)&&gml_node_equals(l__g[4],l_b_b);
			} else return false;
		case 32:
			var l__g1=l_b;
			if(l__g1[0]==32)return gml_node_equals(l__g[2],l__g1[2]); else return false;
		case 33:
			var l__g1=l_b;
			if(l__g1[0]==33)return gml_node_equals(l__g[2],l__g1[2]); else return false;
		case 34:
			var l__g1=l_b;
			if(l__g1[0]==34){
				var l_b_not=l__g1[4];
				var l_b_val=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_val)&&l__g[4]==l_b_not;
			} else return false;
		case 35:
			var l__g1=l_b;
			if(l__g1[0]==35)return l__g[2]==l__g1[2]; else return false;
		case 36:
			var l__g1=l_b;
			if(l__g1[0]==36){
				var l_b_val=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_val);
			} else return false;
		case 112:
			var l__g1=l_b;
			if(l__g1[0]==112)return l__g[2]==l__g1[2]; else return false;
		case 38:
			var l__g1=l_b;
			if(l__g1[0]==38)return l__g[2]==l__g1[2]; else return false;
		case 39:
			var l__g1=l_b;
			if(l__g1[0]==39){
				var l_b_val=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_val);
			} else return false;
		case 21:
			var l__g1=l_b;
			if(l__g1[0]==21){
				var l_b_array=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_array);
			} else return false;
		case 20:
			var l__g1=l_b;
			if(l__g1[0]==20){
				var l_b_args=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals_list(l__g[3],l_b_args);
			} else return false;
		case 19:
			var l__g1=l_b;
			if(l__g1[0]==19){
				var l_b_args=l__g1[4];
				var l_b_script=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_script&&gml_node_equals_list(l__g[4],l_b_args);
			} else return false;
		case 6:
			var l__g1=l_b;
			if(l__g1[0]==6)return gml_node_equals(l__g[2],l__g1[2]); else return false;
		case 18:
			var l__g1=l_b;
			if(l__g1[0]==18){
				var l_b_args=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals_list(l__g[3],l_b_args);
			} else return false;
		case 17:
			var l__g1=l_b;
			if(l__g1[0]==17){
				var l_b_args=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals_list(l__g[3],l_b_args);
			} else return false;
		case 49:
			var l__g1=l_b;
			if(l__g1[0]==49){
				var l_b_v=l__g1[5];
				var l_b_op=l__g1[4];
				var l_b_fd=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_fd&&l__g[4]==l_b_op&&gml_node_equals(l__g[5],l_b_v);
			} else return false;
		case 1:
			var l__g1=l_b;
			if(l__g1[0]==1){
				var l_b_src=l__g1[3];
				return l__g[2]==l__g1[2]&&l__g[3]==l_b_src;
			} else return false;
		case 48:
			var l__g1=l_b;
			if(l__g1[0]==48){
				var l_b_v=l__g1[4];
				var l_b_fd=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_fd&&gml_node_equals(l__g[4],l_b_v);
			} else return false;
		case 50:
			var l__g1=l_b;
			if(l__g1[0]==50){
				var l_b_k=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_k);
			} else return false;
		case 51:
			var l__g1=l_b;
			if(l__g1[0]==51){
				var l_b_val=l__g1[4];
				var l_b_k=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_k)&&gml_node_equals(l__g[4],l_b_val);
			} else return false;
		case 52:
			var l__g1=l_b;
			if(l__g1[0]==52){
				var l_b_val=l__g1[5];
				var l_b_op=l__g1[4];
				var l_b_k=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_k)&&l__g[4]==l_b_op&&gml_node_equals(l__g[5],l_b_val);
			} else return false;
		case 53:
			var l__g1=l_b;
			if(l__g1[0]==53){
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i);
			} else return false;
		case 54:
			var l__g1=l_b;
			if(l__g1[0]==54){
				var l_b_v=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&gml_node_equals(l__g[4],l_b_v);
			} else return false;
		case 55:
			var l__g1=l_b;
			if(l__g1[0]==55){
				var l_b_v=l__g1[5];
				var l_b_op=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&l__g[4]==l_b_op&&gml_node_equals(l__g[5],l_b_v);
			} else return false;
		case 56:
			var l__g1=l_b;
			if(l__g1[0]==56){
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id);
			} else return false;
		case 57:
			var l__g1=l_b;
			if(l__g1[0]==57){
				var l_b_v=l__g1[4];
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id)&&gml_node_equals(l__g[4],l_b_v);
			} else return false;
		case 58:
			var l__g1=l_b;
			if(l__g1[0]==58){
				var l_b_v=l__g1[5];
				var l_b_o=l__g1[4];
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id)&&l__g[4]==l_b_o&&gml_node_equals(l__g[5],l_b_v);
			} else return false;
		case 59:
			var l__g1=l_b;
			if(l__g1[0]==59){
				var l_b_inc=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&l__g[4]==l_b_inc;
			} else return false;
		case 60:
			var l__g1=l_b;
			if(l__g1[0]==60){
				var l_b_inc=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&l__g[4]==l_b_inc;
			} else return false;
		case 61:
			var l__g1=l_b;
			if(l__g1[0]==61){
				var l_b_i2=l__g1[4];
				var l_b_i1=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i1)&&gml_node_equals(l__g[4],l_b_i2);
			} else return false;
		case 62:
			var l__g1=l_b;
			if(l__g1[0]==62){
				var l_b_v=l__g1[5];
				var l_b_i2=l__g1[4];
				var l_b_i1=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i1)&&gml_node_equals(l__g[4],l_b_i2)&&gml_node_equals(l__g[5],l_b_v);
			} else return false;
		case 63:
			var l__g1=l_b;
			if(l__g1[0]==63){
				var l_b_v=l__g1[6];
				var l_b_o=l__g1[5];
				var l_b_i2=l__g1[4];
				var l_b_i1=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i1)&&gml_node_equals(l__g[4],l_b_i2)&&l__g[5]==l_b_o&&gml_node_equals(l__g[6],l_b_v);
			} else return false;
		case 64:
			var l__g1=l_b;
			if(l__g1[0]==64){
				var l_b_inc=l__g1[5];
				var l_b_k=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&gml_node_equals(l__g[4],l_b_k)&&l__g[5]==l_b_inc;
			} else return false;
		case 65:
			var l__g1=l_b;
			if(l__g1[0]==65){
				var l_b_inc=l__g1[5];
				var l_b_k=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&gml_node_equals(l__g[4],l_b_k)&&l__g[5]==l_b_inc;
			} else return false;
		case 66:
			var l__g1=l_b;
			if(l__g1[0]==66){
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id);
			} else return false;
		case 67:
			var l__g1=l_b;
			if(l__g1[0]==67){
				var l_b_v=l__g1[4];
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id)&&gml_node_equals(l__g[4],l_b_v);
			} else return false;
		case 68:
			var l__g1=l_b;
			if(l__g1[0]==68){
				var l_b_v=l__g1[5];
				var l_b_o=l__g1[4];
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id)&&l__g[4]==l_b_o&&gml_node_equals(l__g[5],l_b_v);
			} else return false;
		case 69:
			var l__g1=l_b;
			if(l__g1[0]==69){
				var l_b_inc=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&l__g[4]==l_b_inc;
			} else return false;
		case 70:
			var l__g1=l_b;
			if(l__g1[0]==70){
				var l_b_inc=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&l__g[4]==l_b_inc;
			} else return false;
		case 71:
			var l__g1=l_b;
			if(l__g1[0]==71){
				var l_b_i2=l__g1[4];
				var l_b_i1=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i1)&&gml_node_equals(l__g[4],l_b_i2);
			} else return false;
		case 72:
			var l__g1=l_b;
			if(l__g1[0]==72){
				var l_b_v=l__g1[5];
				var l_b_i2=l__g1[4];
				var l_b_i1=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i1)&&gml_node_equals(l__g[4],l_b_i2)&&gml_node_equals(l__g[5],l_b_v);
			} else return false;
		case 73:
			var l__g1=l_b;
			if(l__g1[0]==73){
				var l_b_v=l__g1[6];
				var l_b_o=l__g1[5];
				var l_b_i2=l__g1[4];
				var l_b_i1=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i1)&&gml_node_equals(l__g[4],l_b_i2)&&l__g[5]==l_b_o&&gml_node_equals(l__g[6],l_b_v);
			} else return false;
		case 74:
			var l__g1=l_b;
			if(l__g1[0]==74){
				var l_b_inc=l__g1[5];
				var l_b_k=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&gml_node_equals(l__g[4],l_b_k)&&l__g[5]==l_b_inc;
			} else return false;
		case 75:
			var l__g1=l_b;
			if(l__g1[0]==75){
				var l_b_inc=l__g1[5];
				var l_b_k=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&gml_node_equals(l__g[4],l_b_k)&&l__g[5]==l_b_inc;
			} else return false;
		case 47:
			var l__g1=l_b;
			if(l__g1[0]==47){
				var l_b_fd=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_fd;
			} else return false;
		case 77:
			var l__g1=l_b;
			if(l__g1[0]==77){
				var l_b_v=l__g1[4];
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id)&&gml_node_equals(l__g[4],l_b_v);
			} else return false;
		case 78:
			var l__g1=l_b;
			if(l__g1[0]==78){
				var l_b_v=l__g1[5];
				var l_b_o=l__g1[4];
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id)&&l__g[4]==l_b_o&&gml_node_equals(l__g[5],l_b_v);
			} else return false;
		case 79:
			var l__g1=l_b;
			if(l__g1[0]==79){
				var l_b_inc=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&l__g[4]==l_b_inc;
			} else return false;
		case 80:
			var l__g1=l_b;
			if(l__g1[0]==80){
				var l_b_inc=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&l__g[4]==l_b_inc;
			} else return false;
		case 81:
			var l__g1=l_b;
			if(l__g1[0]==81){
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id);
			} else return false;
		case 82:
			var l__g1=l_b;
			if(l__g1[0]==82){
				var l_b_v=l__g1[4];
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id)&&gml_node_equals(l__g[4],l_b_v);
			} else return false;
		case 83:
			var l__g1=l_b;
			if(l__g1[0]==83){
				var l_b_v=l__g1[5];
				var l_b_o=l__g1[4];
				var l_b_id=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_id)&&l__g[4]==l_b_o&&gml_node_equals(l__g[5],l_b_v);
			} else return false;
		case 84:
			var l__g1=l_b;
			if(l__g1[0]==84){
				var l_b_inc=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&l__g[4]==l_b_inc;
			} else return false;
		case 46:
			var l__g1=l_b;
			if(l__g1[0]==46){
				var l_b_val=l__g1[4];
				var l_b_op=l__g1[3];
				return l__g[2]==l__g1[2]&&l__g[3]==l_b_op&&gml_node_equals(l__g[4],l_b_val);
			} else return false;
		case 15:
			var l__g1=l_b;
			if(l__g1[0]==15)return gml_node_equals(l__g[2],l__g1[2]); else return false;
		case 86:
			var l__g1=l_b;
			if(l__g1[0]==86){
				var l_b_i2=l__g1[4];
				var l_b_i1=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i1)&&gml_node_equals(l__g[4],l_b_i2);
			} else return false;
		case 87:
			var l__g1=l_b;
			if(l__g1[0]==87){
				var l_b_v=l__g1[5];
				var l_b_i2=l__g1[4];
				var l_b_i1=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i1)&&gml_node_equals(l__g[4],l_b_i2)&&gml_node_equals(l__g[5],l_b_v);
			} else return false;
		case 88:
			var l__g1=l_b;
			if(l__g1[0]==88){
				var l_b_v=l__g1[6];
				var l_b_o=l__g1[5];
				var l_b_i2=l__g1[4];
				var l_b_i1=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i1)&&gml_node_equals(l__g[4],l_b_i2)&&l__g[5]==l_b_o&&gml_node_equals(l__g[6],l_b_v);
			} else return false;
		case 89:
			var l__g1=l_b;
			if(l__g1[0]==89){
				var l_b_inc=l__g1[5];
				var l_b_k=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&gml_node_equals(l__g[4],l_b_k)&&l__g[5]==l_b_inc;
			} else return false;
		case 90:
			var l__g1=l_b;
			if(l__g1[0]==90){
				var l_b_inc=l__g1[5];
				var l_b_k=l__g1[4];
				var l_b_i=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_i)&&gml_node_equals(l__g[4],l_b_k)&&l__g[5]==l_b_inc;
			} else return false;
		case 91:
			var l_a_value=l__g[3];
			var l__g1=l_b;
			if(l__g1[0]==91){
				var l_b_value=l__g1[3];
				if(l__g[2]==l__g1[2]){
					if(l_a_value!=undefined)return l_b_value!=undefined&&gml_node_equals(l_a_value,l_b_value); else return l_b_value==undefined;
				} else return false;
			} else return false;
		case 92:
			var l__g1=l_b;
			if(l__g1[0]==92)return gml_node_equals_list(l__g[2],l__g1[2]); else return false;
		case 93:
			var l_a_not=l__g[4];
			var l__g1=l_b;
			if(l__g1[0]==93){
				var l_b_not=l__g1[4];
				var l_b_then=l__g1[3];
				if(gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_then)){
					if(l_a_not!=undefined)return l_b_not!=undefined&&gml_node_equals(l_a_not,l_b_not); else return l_b_not==undefined;
				} else return false;
			} else return false;
		case 117:
			var l__g1=l_b;
			if(l__g1[0]==117){
				var l_b_pl=l__g1[4];
				var l_b_x=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_x)&&l__g[4]==l_b_pl;
			} else return false;
		case 96:
			var l__g1=l_b;
			if(l__g1[0]==96)return gml_node_equals(l__g[2],l__g1[2]); else return false;
		case 45:
			var l__g1=l_b;
			if(l__g1[0]==45){
				var l_b_val=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_val);
			} else return false;
		case 98:
			var l__g1=l_b;
			if(l__g1[0]==98){
				var l_b_node=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_node);
			} else return false;
		case 99:
			var l__g1=l_b;
			if(l__g1[0]==99){
				var l_b_cond=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_cond);
			} else return false;
		case 100:
			var l__g1=l_b;
			if(l__g1[0]==100){
				var l_b_cond=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_cond);
			} else return false;
		case 101:
			var l__g1=l_b;
			if(l__g1[0]==101){
				var l_b_node=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_node);
			} else return false;
		case 102:
			var l__g1=l_b;
			if(l__g1[0]==102){
				var l_b_loop=l__g1[5];
				var l_b_post=l__g1[4];
				var l_b_cond=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_cond)&&gml_node_equals(l__g[4],l_b_post)&&gml_node_equals(l__g[5],l_b_loop);
			} else return false;
		case 103:
			var l__g1=l_b;
			if(l__g1[0]==103){
				var l_b_node=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&gml_node_equals(l__g[3],l_b_node);
			} else return false;
		case 104:
			var l__g1=l_b;
			if(l__g1[0]==104)return gml_node_equals(l__g[2],l__g1[2]); else return false;
		case 105:
			var l__g1=l_b;
			if(l__g1[0]==105)return gml_node_equals(l__g[2],l__g1[2]); else return false;
		case 44:
			var l__g1=l_b;
			if(l__g1[0]==44)return l__g[2]==l__g1[2]; else return false;
		case 43:
			var l__g1=l_b;
			if(l__g1[0]==43){
				var l_b_val=l__g1[5];
				var l_b_op=l__g1[4];
				var l_b_fd=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_fd&&l__g[4]==l_b_op&&gml_node_equals(l__g[5],l_b_val);
			} else return false;
		case 14:
			var l__g1=l_b;
			if(l__g1[0]==14)return l__g[2]==l__g1[2]; else return false;
		case 42:
			var l__g1=l_b;
			if(l__g1[0]==42){
				var l_b_val=l__g1[4];
				var l_b_fd=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_fd&&gml_node_equals(l__g[4],l_b_val);
			} else return false;
		case 110:
			var l__g1=l_b;
			if(l__g1[0]==110){
				var l_b_cat=l__g1[4];
				var l_b_cap=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_cap&&gml_node_equals(l__g[4],l_b_cat);
			} else return false;
		case 111:
			var l__g1=l_b;
			if(l__g1[0]==111)return gml_node_equals(l__g[2],l__g1[2]); else return false;
		case 41:
			var l__g1=l_b;
			if(l__g1[0]==41){
				var l_b_fd=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_fd;
			} else return false;
		case 113:
			var l__g1=l_b;
			if(l__g1[0]==113){
				var l_b_x=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_x);
			} else return false;
		case 114:
			var l__g1=l_b;
			if(l__g1[0]==114){
				var l_b_s=l__g1[3];
				return gml_node_equals(l__g[2],l__g1[2])&&l__g[3]==l_b_s;
			} else return false;
		case 115:
			var l__g1=l_b;
			if(l__g1[0]==115){
				var l_b_x=l__g1[3];
				return l__g[2]==l__g1[2]&&gml_node_equals(l__g[3],l_b_x);
			} else return false;
		case 116:
			var l__g1=l_b;
			if(l__g1[0]==116)return l__g[2]==l__g1[2]; else return false;
		case 118:
			var l__g=l_b;
			if(l__g[0]==118){
				var l_b_pl=l__g[4];
				var l_b_s=l__g[3];
				return gml_node_equals(l__g[2],l__g[2])&&l__g[3]==l_b_s&&l__g[4]==l_b_pl;
			} else return false;
		case 40:
			var l__g1=l_b;
			if(l__g1[0]==40){
				var l_b_val=l__g1[4];
				var l_b_op=l__g1[3];
				return l__g[2]==l__g1[2]&&l__g[3]==l_b_op&&gml_node_equals(l__g[4],l_b_val);
			} else return false;
		case 13:
			var l__g1=l_b;
			if(l__g1[0]==13)return l__g[2]==l__g1[2]; else return false;
		case 4:
			var l__g1=l_b;
			if(l__g1[0]==4)return gml_node_equals_list(l__g[2],l__g1[2]); else return false;
		case 12:
			var l__g1=l_b;
			if(l__g1[0]==12)return l__g[2]==l__g1[2]; else return false;
		case 5:
			var l_m1=l__g[3];
			var l__g1=l_b;
			if(l__g1[0]==5){
				var l_m2=l__g1[3];
				var l_k2=l__g1[2];
				l_n=array_length(l_m1);
				if(array_length(l_m2)==l_n){
					l_i=0;
					while(l_i<l_n){
						if(l__g[2][l_i]==l_k2[l_i]&&gml_node_equals(l_m1[l_i],l_m2[l_i]))l_i++; else break;
					}
					return l_i>=l_n;
				} else return false;
			} else return false;
		case 95:
			var l_o1=l__g[4];
			var l_m1=l__g[3];
			var l__g1=l_b;
			if(l__g1[0]==95){
				var l_o2=l__g1[4];
				var l_m2=l__g1[3];
				if(gml_node_equals(l__g[2],l__g1[2])&&(l_o1!=undefined&&l_o2!=undefined&&gml_node_equals(l_o1,l_o2)||l_o1==undefined&&l_o2==undefined)){
					l_n=array_length(l_m1);
					if(array_length(l_m2)!=l_n)return false;
					l_i=0;
					while(l_i<l_n){
						if(gml_node_equals(l_m1[l_i][1],l_m2[l_i][1])&&gml_node_equals_list(l_m1[l_i][0],l_m2[l_i][0]))l_i++; else break;
					}
					return l_i>=l_n;
				} else return false;
			} else return false;
	}
}

if(live_enabled)
function gml_node_clone_opt(l_q){
	if(l_q!=undefined)return gml_node_clone(l_q); else return undefined;
}

if(live_enabled)
function gml_node_clone(l_q){
	var l_xw,l_i,l_n,l_fi;
	var l_d=gml_std_haxe_enum_tools_getParameter(l_q,0);
	var l__g=l_q;
	switch(l__g[0]){
		case 2:return [2,l_d,l__g[2]];
		case 3:return [3,l_d,l__g[2],l__g[3]];
		case 5:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[3]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [5,l_d,gml_std_gml_internal_ArrayImpl_slice(l__g[2],0),l_xw];
		case 6:return [6,l_d,gml_node_clone(l__g[2])];
		case 7:return [7,l_d,l__g[2]];
		case 8:return [8,l_d];
		case 9:return [9,l_d];
		case 10:return [10,l_d];
		case 11:return [11,l_d,l__g[2]];
		case 0:return [0,l_d];
		case 14:return [14,l_d,l__g[2]];
		case 15:return [15,l_d,gml_node_clone(l__g[2])];
		case 16:return [16,l_d];
		case 17:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[3]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [17,l_d,gml_node_clone(l__g[2]),l_xw];
		case 18:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[3]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [18,l_d,l__g[2],l_xw];
		case 19:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[4]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [19,l_d,gml_node_clone(l__g[2]),l__g[3],l_xw];
		case 20:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[3]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [20,l_d,gml_node_clone(l__g[2]),l_xw];
		case 21:return [21,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 22:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[4]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [22,l_d,gml_node_clone(l__g[2]),l__g[3],l_xw];
		case 23:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[3]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [23,l_d,l__g[2],l_xw];
		case 24:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[4]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [24,l_d,gml_node_clone(l__g[2]),l__g[3],l_xw];
		case 25:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[3]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [25,l_d,gml_node_clone(l__g[2]),l_xw];
		case 26:return [26,l_d,l__g[2]];
		case 27:return [27,l_d,gml_node_clone(l__g[2]),l__g[3]];
		case 28:return [28,l_d,gml_node_clone(l__g[2]),l__g[3]];
		case 29:return [29,l_d,gml_node_clone(l__g[2]),l__g[3]];
		case 30:return [30,l_d,l__g[2],gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 94:return [94,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 32:return [32,l_d,gml_node_clone(l__g[2])];
		case 33:return [33,l_d,gml_node_clone(l__g[2])];
		case 34:return [34,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4]];
		case 35:return [35,l_d,l__g[2]];
		case 36:return [36,l_d,l__g[2],gml_node_clone(l__g[3])];
		case 37:return [37,l_d,l__g[2],l__g[3],gml_node_clone(l__g[4])];
		case 38:return [38,l_d,l__g[2]];
		case 39:return [39,l_d,l__g[2],gml_node_clone(l__g[3])];
		case 41:return [41,l_d,gml_node_clone(l__g[2]),l__g[3]];
		case 42:return [42,l_d,gml_node_clone(l__g[2]),l__g[3],gml_node_clone(l__g[4])];
		case 43:return [43,l_d,gml_node_clone(l__g[2]),l__g[3],l__g[4],gml_node_clone(l__g[5])];
		case 44:return [44,l_d,l__g[2]];
		case 45:return [45,l_d,l__g[2],gml_node_clone(l__g[3])];
		case 46:return [46,l_d,l__g[2],l__g[3],gml_node_clone(l__g[4])];
		case 47:return [47,l_d,gml_node_clone(l__g[2]),l__g[3]];
		case 48:return [48,l_d,gml_node_clone(l__g[2]),l__g[3],gml_node_clone(l__g[4])];
		case 49:return [49,l_d,gml_node_clone(l__g[2]),l__g[3],l__g[4],gml_node_clone(l__g[5])];
		case 50:return [50,l_d,l__g[2],gml_node_clone(l__g[3])];
		case 51:return [51,l_d,l__g[2],gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 52:return [52,l_d,l__g[2],gml_node_clone(l__g[3]),l__g[4],gml_node_clone(l__g[5])];
		case 53:return [53,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 54:return [54,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 55:return [55,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4],gml_node_clone(l__g[5])];
		case 56:return [56,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 57:return [57,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 58:return [58,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4],gml_node_clone(l__g[5])];
		case 59:return [59,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4]];
		case 60:return [60,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4]];
		case 61:return [61,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 62:return [62,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),gml_node_clone(l__g[5])];
		case 63:return [63,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),l__g[5],gml_node_clone(l__g[6])];
		case 64:return [64,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),l__g[5]];
		case 65:return [65,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),l__g[5]];
		case 66:return [66,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 67:return [67,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 68:return [68,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4],gml_node_clone(l__g[5])];
		case 69:return [69,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4]];
		case 70:return [70,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4]];
		case 71:return [71,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 72:return [72,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),gml_node_clone(l__g[5])];
		case 73:return [73,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),l__g[5],gml_node_clone(l__g[6])];
		case 74:return [74,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),l__g[5]];
		case 75:return [75,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),l__g[5]];
		case 76:return [76,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 77:return [77,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 78:return [78,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4],gml_node_clone(l__g[5])];
		case 79:return [79,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4]];
		case 80:return [80,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4]];
		case 81:return [81,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 82:return [82,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 83:return [83,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4],gml_node_clone(l__g[5])];
		case 84:return [84,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4]];
		case 85:return [85,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),l__g[4]];
		case 86:return [86,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 87:return [87,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),gml_node_clone(l__g[5])];
		case 88:return [88,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),l__g[5],gml_node_clone(l__g[6])];
		case 89:return [89,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),l__g[5]];
		case 90:return [90,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),l__g[5]];
		case 91:return [91,l_d,l__g[2],gml_node_clone_opt(l__g[3])];
		case 92:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[2]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [92,l_d,l_xw];
		case 93:return [93,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone_opt(l__g[4])];
		case 118:return [118,l_d,gml_node_clone(l__g[2]),l__g[3],l__g[4]];
		case 31:return [31,l_d,l__g[2],gml_node_clone(l__g[3]),gml_node_clone(l__g[4])];
		case 96:return [96,l_d,gml_node_clone(l__g[2])];
		case 97:return [97,l_d];
		case 98:return [98,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 99:return [99,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 100:return [100,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 101:return [101,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 102:return [102,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3]),gml_node_clone(l__g[4]),gml_node_clone(l__g[5])];
		case 103:return [103,l_d,gml_node_clone(l__g[2]),gml_node_clone(l__g[3])];
		case 104:return [104,l_d,gml_node_clone(l__g[2])];
		case 105:return [105,l_d,gml_node_clone(l__g[2])];
		case 106:return [106,l_d];
		case 107:return [107,l_d];
		case 108:return [108,l_d];
		case 109:return [109,l_d];
		case 110:return [110,l_d,gml_node_clone(l__g[2]),l__g[3],gml_node_clone(l__g[4])];
		case 111:return [111,l_d,gml_node_clone(l__g[2])];
		case 112:return [112,l_d,l__g[2]];
		case 113:return [113,l_d,l__g[2],gml_node_clone(l__g[3])];
		case 114:return [114,l_d,gml_node_clone(l__g[2]),l__g[3]];
		case 115:return [115,l_d,l__g[2],gml_node_clone(l__g[3])];
		case 116:return [116,l_d,l__g[2]];
		case 117:return [117,l_d,l__g[2],gml_node_clone(l__g[3]),l__g[4]];
		case 40:return [40,l_d,l__g[2],l__g[3],gml_node_clone(l__g[4])];
		case 13:return [13,l_d,l__g[2]];
		case 4:
			l_xw=gml_std_gml_internal_ArrayImpl_copy(l__g[2]);
			l_fi=array_length(l_xw);
			while(--l_fi>=0){
				l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
			}
			return [4,l_d,l_xw];
		case 1:return [1,l_d,l__g[2],l__g[3]];
		case 12:return [12,l__g[1],l__g[2],l__g[3]];
		case 95:
			var l_m=l__g[3];
			l_m=gml_std_gml_internal_ArrayImpl_copy(l_m);
			l_n=array_length(l_m);
			for(l_i=0;l_i<l_n;l_i++){
				var l_cc=l_m[l_i];
				l_xw=gml_std_gml_internal_ArrayImpl_copy(l_cc[0]);
				l_fi=array_length(l_xw);
				while(--l_fi>=0){
					l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
				}
				l_cc=[l_xw,gml_node_clone(l_cc[1]),l_cc[2]];
				l_m[@l_i]=l_cc;
				l_xw=gml_std_gml_internal_ArrayImpl_copy(l_cc[2]);
				l_fi=array_length(l_xw);
				while(--l_fi>=0){
					l_xw[@l_fi]=gml_node_clone(l_xw[l_fi]);
				}
				l_cc[@2]=l_xw;
			}
			return [95,l__g[1],gml_node_clone(l__g[2]),l_m,gml_node_clone_opt(l__g[4])];
	}
}

if(live_enabled)
function gml_node_seek_all_out(l_q,l_st,l_c,l_si){
	var l_w,l_i;
	var l_par=l_st[|l_si];
	if(l_par==undefined)return false;
	var l__g=l_par;
	switch(l__g[0]){
		case 92:
			l_w=l__g[2];
			l_i=array_length(l_w);
			while(--l_i>=0){
				if(l_w[l_i]==l_q)break;
			}
			while(--l_i>=0){
				if(l_c(l_w[l_i],undefined))return true;
			}
			break;
		case 93:
			var l_c1=l__g[2];
			if(l_c1!=l_q&&l_c(l_c1,undefined))return true;
			break;
		case 98:
			var l_c1=l__g[2];
			if(l_c1!=l_q&&l_c(l_c1,undefined))return true;
			break;
		case 100:
			var l_c1=l__g[2];
			if(l_c1!=l_q&&l_c(l_c1,undefined))return true;
			break;
		case 99:
			var l_c1=l__g[2];
			if(l_c1!=l_q&&l_c(l_c1,undefined))return true;
			break;
		case 101:
			var l_c1=l__g[2];
			if(l_c1!=l_q&&l_c(l_c1,undefined))return true;
			break;
		case 102:
			var l_c1=l__g[2];
			if(l_c1!=l_q&&l_c(l_c1,undefined))return true;
			break;
		case 95:
			var l_c1=l__g[2];
			if(l_c1!=l_q&&l_c(l_c1,undefined))return true;
			break;
		case 103:
			var l_c1=l__g[2];
			if(l_c1!=l_q&&l_c(l_c1,undefined))return true;
			break;
		case 114:break;
		case 113:break;
		case 115:break;
		case 117:break;
		case 118:break;
		default:throw gml_std_haxe_Exception_thrown("Can't seekAllOut over "+gml_node_get_pos_string(l_par)+" "+gml_std_Type_enumConstructor(l_par));
	}
	return gml_node_seek_all_out(l_par,l_st,l_c,l_si+1);
}

if(live_enabled)
function gml_node_seek_all(l_q,l_st,l_c){
	if(l_st!=undefined)ds_list_insert(l_st,0,l_q);
	var l_r,l_x,l_w,l_i,l_n;
	var l__g=l_q;
	switch(l__g[0]){
		case 118:l_r=l_c(l__g[2],undefined);break;
		case 113:l_r=l_c(l__g[3],undefined);break;
		case 15:l_r=l_c(l__g[2],undefined);break;
		case 27:l_r=l_c(l__g[2],undefined);break;
		case 37:l_r=l_c(l__g[4],undefined);break;
		case 36:l_r=l_c(l__g[3],undefined);break;
		case 115:l_r=l_c(l__g[3],undefined);break;
		case 114:l_r=l_c(l__g[2],undefined);break;
		case 28:l_r=l_c(l__g[2],undefined);break;
		case 32:l_r=l_c(l__g[2],undefined);break;
		case 104:l_r=l_c(l__g[2],undefined);break;
		case 46:l_r=l_c(l__g[4],undefined);break;
		case 45:l_r=l_c(l__g[3],undefined);break;
		case 105:l_r=l_c(l__g[2],undefined);break;
		case 33:l_r=l_c(l__g[2],undefined);break;
		case 6:l_r=l_c(l__g[2],undefined);break;
		case 117:l_r=l_c(l__g[3],undefined);break;
		case 39:l_r=l_c(l__g[3],undefined);break;
		case 96:l_r=l_c(l__g[2],undefined);break;
		case 111:l_r=l_c(l__g[2],undefined);break;
		case 40:l_r=l_c(l__g[4],undefined);break;
		case 12:l_r=false;break;
		case 97:l_r=false;break;
		case 0:l_r=false;break;
		case 10:l_r=false;break;
		case 7:l_r=false;break;
		case 116:l_r=false;break;
		case 2:l_r=false;break;
		case 8:l_r=false;break;
		case 106:l_r=false;break;
		case 26:l_r=false;break;
		case 108:l_r=false;break;
		case 35:l_r=false;break;
		case 3:l_r=false;break;
		case 112:l_r=false;break;
		case 38:l_r=false;break;
		case 109:l_r=false;break;
		case 9:l_r=false;break;
		case 1:l_r=false;break;
		case 107:l_r=false;break;
		case 16:l_r=false;break;
		case 44:l_r=false;break;
		case 11:l_r=false;break;
		case 14:l_r=false;break;
		case 13:l_r=false;break;
		case 30:
			switch(l__g[2]){
				case 80:
					var l_b=l__g[4];
					l_r=l_c(l__g[3],undefined)&&l_c(l_b,undefined);
					break;
				case 96:l_r=l_c(l__g[3],undefined);break;
				default:
					var l_l_b=l__g[4];
					l_r=l_c(l__g[3],undefined)||l_c(l_l_b,undefined);
			}
			break;
		case 5:
			l_w=l__g[3];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],undefined))break;
			}
			l_r=l_i<l_n;
			break;
		case 4:
			l_w=l__g[2];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],undefined))break;
			}
			l_r=l_i<l_n;
			break;
		case 91:
			var l_v=l__g[3];
			l_r=l_v!=undefined&&l_c(l_v,undefined);
			break;
		case 29:l_r=l_c(l__g[2],undefined);break;
		case 92:
			l_w=l__g[2];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],undefined))break;
			}
			l_r=l_i<l_n;
			break;
		case 25:
			var l_m=l__g[3];
			if(l_c(l__g[2],undefined)){
				l_r=true;
			} else {
				l_w=l_m;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],undefined))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 20:
			var l_m=l__g[3];
			if(l_c(l__g[2],undefined)){
				l_r=true;
			} else {
				l_w=l_m;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],undefined))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 17:
			var l_m=l__g[3];
			if(l_c(l__g[2],undefined)){
				l_r=true;
			} else {
				l_w=l_m;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],undefined))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 22:
			var l_m=l__g[4];
			if(l_c(l__g[2],undefined)){
				l_r=true;
			} else {
				l_w=l_m;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],undefined))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 19:
			var l_m=l__g[4];
			if(l_c(l__g[2],undefined)){
				l_r=true;
			} else {
				l_w=l_m;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],undefined))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 24:
			var l_m=l__g[4];
			if(l_c(l__g[2],undefined)){
				l_r=true;
			} else {
				l_w=l_m;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],undefined))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 23:
			l_w=l__g[3];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],undefined))break;
			}
			l_r=l_i<l_n;
			break;
		case 18:
			l_w=l__g[3];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],undefined))break;
			}
			l_r=l_i<l_n;
			break;
		case 21:
			var l_y=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_y,undefined);
			break;
		case 93:
			var l_b=l__g[4];
			var l_a=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_b!=undefined&&l_c(l_a,undefined)&&l_c(l_b,undefined);
			break;
		case 94:
			var l_b=l__g[4];
			var l_a=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_a,undefined)&&l_c(l_b,undefined);
			break;
		case 102:
			var l_c1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_c1,undefined);
			break;
		case 98:l_r=l_c(l__g[2],undefined);break;
		case 103:l_r=l_c(l__g[2],undefined);break;
		case 100:l_r=l_c(l__g[2],undefined);break;
		case 99:l_r=l_c(l__g[2],undefined);break;
		case 101:l_r=l_c(l__g[2],undefined);break;
		case 95:
			var l__d=l__g[4];
			var l__cc=l__g[3];
			if(l_c(l__g[2],undefined)){
				l_r=true;
			} else {
				l_x=l__d;
				if(l_x!=undefined&&l_c(l_x,undefined)){
					l_n=array_length(l__cc);
					l_i=0;
					while(l_i<l_n){
						if(l_c(l_x,undefined))l_i++; else break;
					}
					l_r=l_i>=l_n;
				} else l_r=false;
			}
			break;
		case 110:
			var l_e=l__g[4];
			l_r=l_c(l__g[2],undefined)||l_c(l_e,undefined);
			break;
		case 31:
			var l_l_b=l__g[4];
			l_r=l_c(l__g[3],undefined)||l_c(l_l_b,undefined);
			break;
		case 34:
			var l_l_val=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_val,undefined);
			break;
		case 50:l_r=l_c(l__g[3],undefined);break;
		case 51:
			var l_l_val=l__g[4];
			l_r=l_c(l__g[3],undefined)||l_c(l_l_val,undefined);
			break;
		case 52:
			var l_l_val=l__g[5];
			l_r=l_c(l__g[3],undefined)||l_c(l_l_val,undefined);
			break;
		case 53:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined);
			break;
		case 54:
			var l_l_v=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined)||l_c(l_l_v,undefined);
			break;
		case 55:
			var l_l_v=l__g[5];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined)||l_c(l_l_v,undefined);
			break;
		case 56:
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined);
			break;
		case 57:
			var l_l_v=l__g[4];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined)||l_c(l_l_v,undefined);
			break;
		case 58:
			var l_l_v=l__g[5];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined)||l_c(l_l_v,undefined);
			break;
		case 59:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined);
			break;
		case 60:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined);
			break;
		case 61:
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i1,undefined)||l_c(l_l_i2,undefined);
			break;
		case 62:
			var l_l_v=l__g[5];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i1,undefined)||l_c(l_l_i2,undefined)||l_c(l_l_v,undefined);
			break;
		case 63:
			var l_l_v=l__g[6];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i1,undefined)||l_c(l_l_i2,undefined)||l_c(l_l_v,undefined);
			break;
		case 64:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined)||l_c(l_l_k,undefined);
			break;
		case 65:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined)||l_c(l_l_k,undefined);
			break;
		case 66:
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined);
			break;
		case 67:
			var l_l_v=l__g[4];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined)||l_c(l_l_v,undefined);
			break;
		case 68:
			var l_l_v=l__g[5];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined)||l_c(l_l_v,undefined);
			break;
		case 69:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined);
			break;
		case 70:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined);
			break;
		case 71:
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i1,undefined)||l_c(l_l_i2,undefined);
			break;
		case 72:
			var l_l_v=l__g[5];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i1,undefined)||l_c(l_l_i2,undefined)||l_c(l_l_v,undefined);
			break;
		case 73:
			var l_l_v=l__g[6];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i1,undefined)||l_c(l_l_i2,undefined)||l_c(l_l_v,undefined);
			break;
		case 74:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined)||l_c(l_l_k,undefined);
			break;
		case 75:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined)||l_c(l_l_k,undefined);
			break;
		case 41:l_r=l_c(l__g[2],undefined);break;
		case 42:
			var l_l_val=l__g[4];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_val,undefined);
			break;
		case 43:
			var l_l_val=l__g[5];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_val,undefined);
			break;
		case 47:l_r=l_c(l__g[2],undefined);break;
		case 48:
			var l_l_v=l__g[4];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_v,undefined);
			break;
		case 49:
			var l_l_v=l__g[5];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_v,undefined);
			break;
		case 76:
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined);
			break;
		case 77:
			var l_l_v=l__g[4];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined)||l_c(l_l_v,undefined);
			break;
		case 78:
			var l_l_v=l__g[5];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined)||l_c(l_l_v,undefined);
			break;
		case 79:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined);
			break;
		case 80:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined);
			break;
		case 81:
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined);
			break;
		case 82:
			var l_l_v=l__g[4];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined)||l_c(l_l_v,undefined);
			break;
		case 83:
			var l_l_v=l__g[5];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_id,undefined)||l_c(l_l_v,undefined);
			break;
		case 84:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined);
			break;
		case 85:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined);
			break;
		case 86:
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i1,undefined)||l_c(l_l_i2,undefined);
			break;
		case 87:
			var l_l_v=l__g[5];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i1,undefined)||l_c(l_l_i2,undefined)||l_c(l_l_v,undefined);
			break;
		case 88:
			var l_l_v=l__g[6];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i1,undefined)||l_c(l_l_i2,undefined)||l_c(l_l_v,undefined);
			break;
		case 89:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined)||l_c(l_l_k,undefined);
			break;
		case 90:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],undefined)||l_c(l_l_i,undefined)||l_c(l_l_k,undefined);
			break;
	}
	if(l_st!=undefined)ds_list_delete(l_st,0);
	return false;
}

if(live_enabled)
function gml_node_seek(l_q,l_st,l_c){
	if(l_st!=undefined)ds_list_insert(l_st,0,l_q);
	var l_r,l_w,l_i,l_n,l_k,l_l;
	var l__g=l_q;
	switch(l__g[0]){
		case 2:l_r=false;break;
		case 3:l_r=false;break;
		case 5:
			l_w=l__g[3];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],l_st))break;
			}
			l_r=l_i<l_n;
			break;
		case 6:l_r=l_c(l__g[2],l_st);break;
		case 7:l_r=false;break;
		case 8:l_r=false;break;
		case 9:l_r=false;break;
		case 10:l_r=false;break;
		case 11:l_r=false;break;
		case 0:l_r=false;break;
		case 14:l_r=false;break;
		case 15:l_r=l_c(l__g[2],l_st);break;
		case 16:l_r=false;break;
		case 17:
			var l_l_args=l__g[3];
			if(l_c(l__g[2],l_st)){
				l_r=true;
			} else {
				l_w=l_l_args;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],l_st))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 18:
			l_w=l__g[3];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],l_st))break;
			}
			l_r=l_i<l_n;
			break;
		case 19:
			var l_l_args=l__g[4];
			if(l_c(l__g[2],l_st)){
				l_r=true;
			} else {
				l_w=l_l_args;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],l_st))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 20:
			var l_l_args=l__g[3];
			if(l_c(l__g[2],l_st)){
				l_r=true;
			} else {
				l_w=l_l_args;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],l_st))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 21:
			var l_l_array=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_array,l_st);
			break;
		case 22:
			var l_l_args=l__g[4];
			if(l_c(l__g[2],l_st)){
				l_r=true;
			} else {
				l_w=l_l_args;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],l_st))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 23:
			l_w=l__g[3];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],l_st))break;
			}
			l_r=l_i<l_n;
			break;
		case 24:
			var l_l_args=l__g[4];
			if(l_c(l__g[2],l_st)){
				l_r=true;
			} else {
				l_w=l_l_args;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],l_st))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 25:
			var l_l_args=l__g[3];
			if(l_c(l__g[2],l_st)){
				l_r=true;
			} else {
				l_w=l_l_args;
				l_n=array_length(l_w);
				for(l_i=0;l_i<l_n;l_i++){
					if(l_c(l_w[l_i],l_st))break;
				}
				l_r=l_i<l_n;
			}
			break;
		case 26:l_r=false;break;
		case 27:l_r=l_c(l__g[2],l_st);break;
		case 28:l_r=l_c(l__g[2],l_st);break;
		case 29:l_r=l_c(l__g[2],l_st);break;
		case 30:
			var l_l_b=l__g[4];
			l_r=l_c(l__g[3],l_st)||l_c(l_l_b,l_st);
			break;
		case 94:
			var l_l_not=l__g[4];
			var l_l_then=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_then,l_st)||l_c(l_l_not,l_st);
			break;
		case 32:l_r=l_c(l__g[2],l_st);break;
		case 33:l_r=l_c(l__g[2],l_st);break;
		case 34:
			var l_l_val=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_val,l_st);
			break;
		case 35:l_r=false;break;
		case 36:l_r=l_c(l__g[3],l_st);break;
		case 37:l_r=l_c(l__g[4],l_st);break;
		case 38:l_r=false;break;
		case 39:l_r=l_c(l__g[3],l_st);break;
		case 41:l_r=l_c(l__g[2],l_st);break;
		case 42:
			var l_l_val=l__g[4];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_val,l_st);
			break;
		case 43:
			var l_l_val=l__g[5];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_val,l_st);
			break;
		case 44:l_r=false;break;
		case 45:l_r=l_c(l__g[3],l_st);break;
		case 46:l_r=l_c(l__g[4],l_st);break;
		case 47:l_r=l_c(l__g[2],l_st);break;
		case 48:
			var l_l_v=l__g[4];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_v,l_st);
			break;
		case 49:
			var l_l_v=l__g[5];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_v,l_st);
			break;
		case 50:l_r=l_c(l__g[3],l_st);break;
		case 51:
			var l_l_val=l__g[4];
			l_r=l_c(l__g[3],l_st)||l_c(l_l_val,l_st);
			break;
		case 52:
			var l_l_val=l__g[5];
			l_r=l_c(l__g[3],l_st)||l_c(l_l_val,l_st);
			break;
		case 53:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st);
			break;
		case 54:
			var l_l_v=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st)||l_c(l_l_v,l_st);
			break;
		case 55:
			var l_l_v=l__g[5];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st)||l_c(l_l_v,l_st);
			break;
		case 56:
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st);
			break;
		case 57:
			var l_l_v=l__g[4];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st)||l_c(l_l_v,l_st);
			break;
		case 58:
			var l_l_v=l__g[5];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st)||l_c(l_l_v,l_st);
			break;
		case 59:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st);
			break;
		case 60:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st);
			break;
		case 61:
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i1,l_st)||l_c(l_l_i2,l_st);
			break;
		case 62:
			var l_l_v=l__g[5];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i1,l_st)||l_c(l_l_i2,l_st)||l_c(l_l_v,l_st);
			break;
		case 63:
			var l_l_v=l__g[6];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i1,l_st)||l_c(l_l_i2,l_st)||l_c(l_l_v,l_st);
			break;
		case 64:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st)||l_c(l_l_k,l_st);
			break;
		case 65:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st)||l_c(l_l_k,l_st);
			break;
		case 66:
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st);
			break;
		case 67:
			var l_l_v=l__g[4];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st)||l_c(l_l_v,l_st);
			break;
		case 68:
			var l_l_v=l__g[5];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st)||l_c(l_l_v,l_st);
			break;
		case 69:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st);
			break;
		case 70:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st);
			break;
		case 71:
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i1,l_st)||l_c(l_l_i2,l_st);
			break;
		case 72:
			var l_l_v=l__g[5];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i1,l_st)||l_c(l_l_i2,l_st)||l_c(l_l_v,l_st);
			break;
		case 73:
			var l_l_v=l__g[6];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i1,l_st)||l_c(l_l_i2,l_st)||l_c(l_l_v,l_st);
			break;
		case 74:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st)||l_c(l_l_k,l_st);
			break;
		case 75:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st)||l_c(l_l_k,l_st);
			break;
		case 76:
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st);
			break;
		case 77:
			var l_l_v=l__g[4];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st)||l_c(l_l_v,l_st);
			break;
		case 78:
			var l_l_v=l__g[5];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st)||l_c(l_l_v,l_st);
			break;
		case 79:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st);
			break;
		case 80:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st);
			break;
		case 81:
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st);
			break;
		case 82:
			var l_l_v=l__g[4];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st)||l_c(l_l_v,l_st);
			break;
		case 83:
			var l_l_v=l__g[5];
			var l_l_id=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_id,l_st)||l_c(l_l_v,l_st);
			break;
		case 84:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st);
			break;
		case 85:
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st);
			break;
		case 86:
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i1,l_st)||l_c(l_l_i2,l_st);
			break;
		case 87:
			var l_l_v=l__g[5];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i1,l_st)||l_c(l_l_i2,l_st)||l_c(l_l_v,l_st);
			break;
		case 88:
			var l_l_v=l__g[6];
			var l_l_i2=l__g[4];
			var l_l_i1=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i1,l_st)||l_c(l_l_i2,l_st)||l_c(l_l_v,l_st);
			break;
		case 89:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st)||l_c(l_l_k,l_st);
			break;
		case 90:
			var l_l_k=l__g[4];
			var l_l_i=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_i,l_st)||l_c(l_l_k,l_st);
			break;
		case 91:
			var l_l_value=l__g[3];
			l_r=l_l_value!=undefined&&l_c(l_l_value,l_st);
			break;
		case 92:
			l_w=l__g[2];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],l_st))break;
			}
			l_r=l_i<l_n;
			break;
		case 93:
			var l_l_not=l__g[4];
			var l_l_then=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_then,l_st)||l_l_not!=undefined&&l_c(l_l_not,l_st);
			break;
		case 118:l_r=l_c(l__g[2],l_st);break;
		case 31:
			var l_l_b=l__g[4];
			l_r=l_c(l__g[3],l_st)||l_c(l_l_b,l_st);
			break;
		case 96:l_r=l_c(l__g[2],l_st);break;
		case 97:l_r=false;break;
		case 98:
			var l_l_node=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_node,l_st);
			break;
		case 99:
			var l_l_cond=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_cond,l_st);
			break;
		case 100:
			var l_l_cond=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_cond,l_st);
			break;
		case 101:
			var l_l_node=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_node,l_st);
			break;
		case 102:
			var l_l_loop=l__g[5];
			var l_l_post=l__g[4];
			var l_l_cond=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_cond,l_st)||l_c(l_l_post,l_st)||l_c(l_l_loop,l_st);
			break;
		case 103:
			var l_l_node=l__g[3];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_node,l_st);
			break;
		case 104:l_r=l_c(l__g[2],l_st);break;
		case 105:l_r=l_c(l__g[2],l_st);break;
		case 106:l_r=false;break;
		case 107:l_r=false;break;
		case 108:l_r=false;break;
		case 109:l_r=false;break;
		case 110:
			var l_l_cat=l__g[4];
			l_r=l_c(l__g[2],l_st)||l_c(l_l_cat,l_st);
			break;
		case 111:l_r=l_c(l__g[2],l_st);break;
		case 112:l_r=false;break;
		case 113:l_r=l_c(l__g[3],l_st);break;
		case 114:l_r=l_c(l__g[2],l_st);break;
		case 115:l_r=l_c(l__g[3],l_st);break;
		case 116:l_r=false;break;
		case 117:l_r=l_c(l__g[3],l_st);break;
		case 40:l_r=l_c(l__g[4],l_st);break;
		case 13:l_r=false;break;
		case 4:
			l_w=l__g[2];
			l_n=array_length(l_w);
			for(l_i=0;l_i<l_n;l_i++){
				if(l_c(l_w[l_i],l_st))break;
			}
			l_r=l_i<l_n;
			break;
		case 1:l_r=false;break;
		case 12:l_r=false;break;
		case 95:
			var l_o=l__g[4];
			var l_m=l__g[3];
			if(l_c(l__g[2],l_st)){
				l_r=true;
			} else {
				l_n=array_length(l_m);
				for(l_i=0;l_i<l_n;l_i++){
					l_w=l_m[l_i][0];
					l_l=array_length(l_w);
					for(l_k=0;l_k<l_l;l_k++){
						if(l_c(l_w[l_k],l_st))break;
					}
					if(l_k<l_l||l_c(l_m[l_i][1],l_st))break;
				}
				if(l_i<l_n)l_r=true; else l_r=l_o!=undefined&&l_c(l_o,l_st);
			}
			break;
	}
	if(l_st!=undefined)ds_list_delete(l_st,0);
	return l_r;
}

if(live_enabled)
function ast_gml_node_tools_ni_concat_pos_iter(l_q,l_st){
	var l_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
	gml_std_haxe_enum_tools_setParameter(l_q,0,gml_pos_concat(l_pos,ast_gml_node_tools_ni_concat_pos_pos));
	return gml_node_seek(l_q,undefined,ast_gml_node_tools_ni_concat_pos_iter);
}

if(live_enabled)
function ast_gml_node_tools_ni_concat_pos_rec(l_q,l_p){
	ast_gml_node_tools_ni_concat_pos_pos=l_p;
	ast_gml_node_tools_ni_concat_pos_iter(l_q,undefined);
}

if(live_enabled)
function gml_op_get_priority(l_op){
	return (l_op>>4);
}

if(live_enabled)
function gml_op_get_name(l_this1){
	switch(l_this1){
		case 1:return "Div";
		case 2:return "Mod";
		case 7:return "priorities";
		case 16:return "Add";
		case 17:return "Sub";
		case 18:return "Cct";
		case 32:return "Shl";
		case 33:return "Shr";
		case 48:return "Or";
		case 49:return "And";
		case 64:return "EQ";
		case 65:return "NE";
		case 66:return "LT";
		case 67:return "LE";
		case 68:return "GT";
		case 69:return "GE";
		case 80:return "BAnd";
		case 96:return "BOr";
		case 50:return "Xor";
		case 3:return "IDiv";
		case 0:return "Mul";
		case -1:return "Set";
		default:return undefined;
	}
}

if(live_enabled)
function gml_pos_create(l_src,l_row,l_col){
	var this=[mt_gml_pos];
	array_copy(this,1,mq_gml_pos,1,4);
	this[@4]=undefined;
	this[@1]=l_src;
	this[@2]=l_row;
	this[@3]=l_col;
	return this;
}

if(live_enabled)
function gml_pos_copy(this){
	var l_r=gml_pos_create(this[1],this[2],this[3]);
	if(this[4]!=undefined)l_r[@4]=gml_pos_copy(this[4]);
	return l_r;
}

if(live_enabled)
function gml_pos_concat(this,l_p){
	var l_r=gml_pos_copy(l_p);
	var l_l=l_r;
	while(l_l[4]!=undefined){
		l_l=l_l[4];
	}
	l_l[@4]=this;
	return l_r;
}

if(live_enabled)
function gml_pos_to_string(this){
	var l_r=this[1][1]+("[L"+string(this[2])+",c"+string(this[3])+"]");
	if(this[4]!=undefined)l_r+=">"+gml_pos_to_string(this[4]);
	return l_r;
}

if(live_enabled)
function gml_script_create(l_src,l_name,l_pos){
	var this=[mt_gml_script];
	array_copy(this,1,mq_gml_script,1,10);
	this[@10]=undefined;
	this[@9]=undefined;
	this[@8]=0;
	this[@7]=0;
	this[@6]=haxe_ds_string_map_create();
	this[@5]=l_src;
	this[@1]=l_name;
	this[@2]=l_pos;
	return this;
}

if(live_enabled)
function gml_script_destroy(this){
	if(this[10]!=undefined){
		var l_this1=this[10];
		var l_i=0;
		for(var l__g1=ds_list_size(l_this1);l_i<l__g1;l_i++){
			var l_q=l_this1[|l_i];
			if(l_q[0]==60)ds_map_destroy(l_q[2]);
		}
		ds_list_destroy(l_this1);
	}
}

if(live_enabled)
function gml_script_seek(this,l_iter,l_stack){
	var l__scr=gml_program_seek_script;
	gml_program_seek_script=this;
	l_iter(this[4],l_stack);
	gml_program_seek_script=l__scr;
}

function gml_source_create(l_name,l_code,l_main,l_opt){
	var this=[mt_gml_source];
	array_copy(this,1,mq_gml_source,1,8);
	if(l_opt==undefined)l_opt=false;
	if(false)throw argument[3];
	if(live_enabled){
		this[@8]=undefined;
		this[@7]=0;
		this[@6]=undefined;
		this[@1]=l_name;
		this[@2]=l_code;
		this[@5]=l_opt;
		if(l_main==undefined){
			l_main=l_name;
			var l_i=gml_std_string_pos_last(l_main,"/");
			var l_k=gml_std_string_pos_last(l_main,"\\");
			if(l_i<0||l_k>l_i)l_i=l_k;
			l_i=gml_std_string_pos_ext_haxe(l_main,".");
			if(l_i>=0)l_main=gml_std_string_substring(l_main,0,l_i);
		}
		this[@3]=l_main;
		this[@4]=string_length(l_code);
	}
	return this;
}

function gml_source_get_eof(this){
	if(live_enabled){
		if(this[8]==undefined)this[@8]=gml_pos_create(this,string_count("\n",this[2])+2,1);
		return this[8];
	}else return undefined;
}

function gml_source_to_string(this){
	if(live_enabled){
		return "GmlSource(\""+this[1]+"\")";
	}else return undefined;
}

if(live_enabled)
function gml_parse_name(l_s,l_i){
	var l_c=string_ord_at(l_s,l_i+1);
	if(l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c==95){
		var l_k=l_i;
		while(true){
			l_i++;
			l_c=string_ord_at(l_s,l_i+1);
			if(!(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c>=48&&l_c<=57))break;
		}
		return gml_std_string_substring(l_s,l_k,l_i);
	} else throw gml_std_haxe_Exception_thrown("API.parseName: wrong format in "+l_s);
}

if(live_enabled)
function gml_func_add(l_signature,l_func){
	var l_s=l_signature;
	var l_p0=gml_std_string_pos_ext_haxe(l_s,"(")+1;
	var l_p1=gml_std_string_pos_ext_haxe(l_s,")");
	var l_argv=gml_std_StringTools_trim(gml_std_string_substring(l_s,l_p0,l_p1));
	var l_flags=gml_std_string_substring(l_s,l_p1+1);
	var l_argc,l_arg1;
	var l_arg0=-1;
	var l_argt;
	var l_rest=gml_type_check_any;
	if(l_argv==""){
		l_argc=0;
		l_arg1=0;
		l_argt=array_create(0);
	} else {
		var l_args1=gml_std_string_split(l_argv,",");
		l_argc=array_length(l_args1);
		l_arg1=l_argc;
		l_argt=array_create(l_argc);
		var l_tmap=gml_type_check_map;
		var l_i=0;
		for(var l__g1=l_argc;l_i<l__g1;l_i++){
			var l_arg=l_args1[l_i];
			var l_pos=gml_std_string_pos_ext_haxe(l_arg,"=");
			var l_opt=false;
			if(l_pos>=0){
				l_opt=true;
				l_arg=gml_std_string_substring(l_arg,0,l_pos);
			} else if(gml_std_string_pos_ext_haxe(l_arg,"...")>=0){
				l_arg1=81;
				l_argc=-1;
				l_opt=true;
			}
			l_pos=gml_std_string_pos_ext_haxe(l_arg,":");
			if(l_pos>=0){
				var l_name=gml_std_string_substring(l_arg,0,l_pos);
				if(gml_std_string_pos_ext_haxe(l_name,"?")>=0)l_opt=true;
				var l_type=gml_std_StringTools_trim(gml_std_string_substring(l_arg,l_pos+1));
				if(haxe_ds_basic_map_exists(l_tmap,l_type)){
					var l_tfun=haxe_ds_basic_map_get(l_tmap,l_type);
					if(gml_std_string_pos_ext_haxe(l_arg,"...")>=0)l_rest=l_tfun;
					l_argt[@l_i]=l_tfun;
				} else throw gml_std_haxe_Exception_thrown("\""+l_type+"\" is not a known type (in argument["+string(l_i)+"] \""+l_arg+"\" in \""+l_signature+"\")");
			} else l_argt[@l_i]=gml_type_check_any;
			if(l_opt&&l_arg0<0)l_arg0=l_i;
		}
		if(gml_std_string_pos_ext_haxe(l_argv,"...")>=0||gml_std_string_pos_ext_haxe(l_argv,"?")>=0||gml_std_string_pos_ext_haxe(l_argv,"=")>=0)l_argc=-1;
	}
	if(l_argc<0){
		if(l_arg0<0)l_arg0=0;
	} else {
		l_arg1=l_argc;
		l_arg0=l_argc;
	}
	var l_i=0;
	var l_inst=0;
	if(string_ord_at(l_s,l_i+1)==58){
		l_i++;
		l_inst++;
	}
	if(string_ord_at(l_s,l_i+1)==58){
		l_i++;
		l_inst++;
	}
	if(string_ord_at(l_s,l_i+1)==58){
		l_i++;
		l_inst++;
	}
	if(string_ord_at(l_s,l_i+1)==36&&string_ord_at(l_s,l_i+1+1)==123){
		var l_k=gml_std_string_pos_ext_haxe(l_s,"}",l_i+2);
		if(l_k<0)throw gml_std_haxe_Exception_thrown("Unclosed $(meta)");
		if(gml_std_string_substring(l_s,l_i+2,l_k)=="raw")l_inst=-5; else throw gml_std_haxe_Exception_thrown("Unknown meta $("+gml_std_string_substring(l_s,l_i+2,l_k)+")");
		l_i=l_k+1;
	}
	var l_name=gml_parse_name(l_s,l_i);
	if(l_inst!=0)haxe_ds_basic_map_set(gml_inst_data,l_name,l_inst);
	haxe_ds_basic_map_set(gml_func_eval,l_name,gml_std_string_pos_ext_haxe(l_flags,"#")>=0);
	haxe_ds_basic_map_set(gml_func_args,l_name,l_argt);
	haxe_ds_basic_map_set(gml_func_rest,l_name,l_rest);
	haxe_ds_basic_map_set(gml_func_arg0,l_name,l_arg0);
	haxe_ds_basic_map_set(gml_func_arg1,l_name,l_arg1);
	haxe_ds_basic_map_set(gml_func_script,l_name,l_func);
	haxe_ds_basic_map_set(gml_func_sig,l_name,l_s);
}

if(live_enabled)
function gml_func_copy(l_to,l_from){
	if(!haxe_ds_basic_map_exists(gml_func_script,l_from))throw gml_std_haxe_Exception_thrown("Can't find "+l_from);
	haxe_ds_basic_map_set(gml_func_eval,l_to,haxe_ds_basic_map_get(gml_func_eval,l_from));
	haxe_ds_basic_map_set(gml_func_args,l_to,haxe_ds_basic_map_get(gml_func_args,l_from));
	haxe_ds_basic_map_set(gml_func_rest,l_to,haxe_ds_basic_map_get(gml_func_rest,l_from));
	haxe_ds_basic_map_set(gml_func_arg0,l_to,haxe_ds_basic_map_get(gml_func_arg0,l_from));
	haxe_ds_basic_map_set(gml_func_arg1,l_to,haxe_ds_basic_map_get(gml_func_arg1,l_from));
	haxe_ds_basic_map_set(gml_func_script,l_to,haxe_ds_basic_map_get(gml_func_script,l_from));
	haxe_ds_basic_map_set(gml_func_sig,l_to,haxe_ds_basic_map_get(gml_func_sig,l_from));
}

if(live_enabled)
function gml_remove_func(l_name){
	if(!haxe_ds_basic_map_exists(gml_func_script,l_name))return false;
	haxe_ds_basic_map_remove(gml_func_script,l_name);
	haxe_ds_basic_map_remove(gml_func_eval,l_name);
	haxe_ds_basic_map_remove(gml_func_args,l_name);
	haxe_ds_basic_map_remove(gml_func_arg0,l_name);
	haxe_ds_basic_map_remove(gml_func_arg1,l_name);
	haxe_ds_basic_map_remove(gml_func_sig,l_name);
	return true;
}

if(live_enabled)
function gml_var_add(l_s,l_func){
	var l_flags=0;
	if(string_ord_at(l_s,1)==58){
		l_s=gml_std_string_substring(l_s,1);
		l_flags|=4;
	}
	var l_type=gml_type_check_any;
	var l_pos=gml_std_string_pos_ext_haxe(l_s,":");
	if(l_pos>=0){
		var l_tstr=gml_std_string_substring(l_s,l_pos+1);
		if(haxe_ds_basic_map_exists(gml_type_check_map,l_tstr)){
			l_type=haxe_ds_basic_map_get(gml_type_check_map,l_tstr);
			l_s=gml_std_string_substring(l_s,0,l_pos);
		} else throw gml_std_haxe_Exception_thrown("`"+l_tstr+"` is not a known type.");
	}
	var l_name=gml_parse_name(l_s,0);
	if(gml_std_string_pos_ext_haxe(l_s,"[")>=0)l_flags|=2;
	if(gml_std_string_pos_ext_haxe(l_s,"*")>=0)l_flags|=1;
	haxe_ds_basic_map_set(gml_var_flags,l_name,l_flags);
	haxe_ds_basic_map_set(gml_var_refs,l_name,l_func);
	haxe_ds_basic_map_set(gml_var_types,l_name,l_type);
}

if(live_enabled)
function gml_remove_var(l_name){
	if(!haxe_ds_basic_map_exists(gml_var_refs,l_name))return false;
	haxe_ds_basic_map_remove(gml_var_refs,l_name);
	haxe_ds_basic_map_remove(gml_var_flags,l_name);
	haxe_ds_basic_map_remove(gml_var_types,l_name);
	return true;
}

if(live_enabled)
function gml_const_add(l_name,l_value){
	haxe_ds_basic_map_set(gml_const_map,l_name,true);
	haxe_ds_basic_map_set(gml_const_val,l_name,l_value);
}

if(live_enabled)
function gml_remove_const(l_name){
	if(haxe_ds_basic_map_exists(gml_const_map,l_name)){
		haxe_ds_basic_map_remove(gml_const_map,l_name);
		haxe_ds_basic_map_remove(gml_const_val,l_name);
		return true;
	} else return false;
}

if(live_enabled)
function gml_asset_add(l_name,l_index){
	haxe_ds_basic_map_set(gml_asset_index,l_name,l_index);
}

if(live_enabled)
function gml_std_haxe_class(l_id,l_name)constructor{
	static h_superClass=undefined;
	static h_constructor=undefined;
	static h_marker=undefined;
	static h_index=undefined;
	static h_name=undefined;
	self.h_superClass=undefined;
	self.h_marker=gml_std_haxe_type_markerValue;
	self.h_index=l_id;
	self.h_name=l_name;
	static __class__="class";
}
if(live_enabled)mt_gml_std_haxe_class.h_constructor=gml_std_haxe_class;

if(live_enabled)
function gml_std_haxe_enum(l_id,l_name,l_constructors)constructor{
	static h_constructors=undefined;
	static h_marker=undefined;
	static h_index=undefined;
	static h_name=undefined;
	if(false)throw argument[2];
	self.h_marker=gml_std_haxe_type_markerValue;
	self.h_index=l_id;
	self.h_name=l_name;
	self.h_constructors=l_constructors;
	static __class__="enum";
}
if(live_enabled)mt_gml_std_haxe_enum.h_constructor=gml_std_haxe_enum;

if(live_enabled)
function gml_seek_adjfix_proc(l_q,l_st){
	var l__g=l_q;
	switch(l__g[0]){
		case 28:
			var l_b=l__g[3];
			var l_x=l__g[2];
			var l_d=l__g[1];
			var l_pre;
			if(l_q[0]==27)l_pre=true; else l_pre=false;
			var l_o;
			var l_inBlock=gml_node_is_in_block(l_x,l_st[|0]);
			if(l_pre||l_inBlock){
				var l__g=l_x;
				switch(l__g[0]){
					case 81:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,[83,l_d,l__g[2],l__g[3],l_o,[1,l_d,1,undefined]]);
						break;
					case 76:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,[78,l_d,l__g[2],l__g[3],l_o,[1,l_d,1,undefined]]);
						break;
					case 86:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,[88,l_d,l__g[2],l__g[3],l__g[4],l_o,[1,l_d,1,undefined]]);
						break;
					default:
						if(l_inBlock){
							l_o=(l_b?16:17);
							gml_std_haxe_enum_tools_setTo(l_q,[31,l_d,l_o,l_x,[1,l_d,1,undefined]]);
						}
				}
			}
			break;
		case 27:
			var l_x=l__g[2];
			var l_d=l__g[1];
			var l_pre;
			if(l_q[0]==27)l_pre=true; else l_pre=false;
			var l_o;
			var l_inBlock=gml_node_is_in_block(l_x,l_st[|0]);
			if(l_pre||l_inBlock){
				var l__g1=l_x;
				switch(l__g1[0]){
					case 81:
						l_o=(l__g[3]?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,[83,l_d,l__g1[2],l__g1[3],l_o,[1,l_d,1,undefined]]);
						break;
					case 76:
						l_o=(l__g[3]?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,[78,l_d,l__g1[2],l__g1[3],l_o,[1,l_d,1,undefined]]);
						break;
					case 86:
						l_o=(l__g[3]?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,[88,l_d,l__g1[2],l__g1[3],l__g1[4],l_o,[1,l_d,1,undefined]]);
						break;
					default:
						if(l_inBlock){
							l_o=(l__g[3]?16:17);
							gml_std_haxe_enum_tools_setTo(l_q,[31,l_d,l_o,l_x,[1,l_d,1,undefined]]);
						}
				}
			}
			break;
	}
	return gml_node_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_alarms_check(l_x){
	var l__g=l_x;
	if(l__g[0]==41){
		if(l__g[3]=="alarm")return l__g[2]; else return undefined;
	} else return undefined;
}

if(live_enabled)
function gml_seek_alarms_proc(l_q,l_st){
	var l_r;
	var l__g=l_q;
	switch(l__g[0]){
		case 66:
			l_r=gml_seek_alarms_check(l__g[2]);
			if(l_r!=undefined)gml_std_haxe_enum_tools_setTo(l_q,[53,l__g[1],l_r,l__g[3]]);
			break;
		case 56:
			l_r=gml_seek_alarms_check(l__g[2]);
			if(l_r!=undefined)gml_std_haxe_enum_tools_setTo(l_q,[53,l__g[1],l_r,l__g[3]]);
			break;
	}
	return gml_node_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_arguments_proc(l_q,l_st){
	gml_node_seek(l_q,l_st,gml_program_seek_func);
	var l__g=l_q;
	if(l__g[0]==14){
		var l_i=l__g[2];
		if(gml_program_seek_script[8]<=l_i)gml_program_seek_script[@8]=l_i+1;
	}
	return false;
}

if(live_enabled)
function gml_seek_calls_proc(l_q,l_st){
	var l_n,l_s;
	var l__g=l_q;
	if(l__g[0]==17){
		var l_w=l__g[3];
		var l_x=l__g[2];
		var l_d=l__g[1];
		var l__g=l_x;
		switch(l__g[0]){
			case 11:
				var l_o=l__g[2];
				l_n=l_o[8];
				l_s=l_o[1];
				if(l_n<=0||array_length(l_w)==l_n)gml_std_haxe_enum_tools_setTo(l_q,[18,l_d,l_s,l_w]); else return gml_program_error(gml_program_seek_inst,"Wrong number of arguments for `"+l_s+"`",l_d);
				break;
			case 41:
				var l_s=l__g[3];
				if(haxe_ds_basic_map_exists(gml_func_arg0,l_s)){
					if(haxe_ds_basic_map_exists(gml_inst_data,l_s))gml_std_haxe_enum_tools_setTo(l_q,[24,l_d,l__g[2],l_s,l_w]); else return gml_program_error(gml_program_seek_inst,"`"+l_s+"` cannot be called on an instance",l__g[1]);
				} else if(haxe_ds_basic_map_exists(gml_program_seek_inst[3],l_s)){
					l_n=haxe_ds_basic_map_get(gml_program_seek_inst[3],l_s)[8];
					if(l_n<=0||array_length(l_w)==l_n)gml_std_haxe_enum_tools_setTo(l_q,[19,l_d,l__g[2],l_s,l_w]); else return gml_program_error(gml_program_seek_inst,"Wrong number of arguments for `"+l_s+"`",l_d);
				} else gml_std_haxe_enum_tools_setTo(l_q,[22,l_d,l__g[2],l_s,l_w]);
				break;
			case 12:
				var l_s=l__g[2];
				var l_n0=haxe_ds_basic_map_get(gml_func_arg0,l_s);
				if(l_n0!=undefined){
					var l_n1=haxe_ds_basic_map_get(gml_func_arg1,l_s);
					var l_wn=array_length(l_w);
					if(l_wn<l_n0||l_wn>l_n1){
						if(l_n0==l_n1){
							l_s="`"+l_s+"` takes "+gml_std_Std_stringify(l_n0)+" argument";
							if(l_n0!=1)l_s+="s";
						} else if(l_wn<l_n0){
							l_s="`"+l_s+"` requires at least "+gml_std_Std_stringify(l_n0)+" argument";
							if(l_n0!=1)l_s+="s";
						} else {
							l_s="`"+l_s+"` takes no more than "+gml_std_Std_stringify(l_n1)+" argument";
							if(l_n1!=1)l_s+="s";
						}
						l_s+=", got "+string(l_wn);
						return gml_program_error(gml_program_seek_inst,l_s,gml_std_haxe_enum_tools_getParameter(l_x,0));
					} else gml_std_haxe_enum_tools_setTo(l_q,[23,l_d,l_s,l_w]);
				} else if(gml_parser_gml23){
					gml_std_haxe_enum_tools_setTo(l_q,[20,l_d,l_x,l_w]);
				} else return gml_program_error(gml_program_seek_inst,"`"+l_s+"` is not a function or script",gml_std_haxe_enum_tools_getParameter(l_x,0));
				break;
			case 7:
				var l_s1=l__g[2];
				var l_n0=haxe_ds_basic_map_get(gml_func_arg0,l_s1);
				if(l_n0!=undefined){
					var l_n1=haxe_ds_basic_map_get(gml_func_arg1,l_s1);
					var l_wn=array_length(l_w);
					if(l_wn<l_n0||l_wn>l_n1){
						if(l_n0==l_n1){
							l_s1="`"+l_s1+"` takes "+gml_std_Std_stringify(l_n0)+" argument";
							if(l_n0!=1)l_s1+="s";
						} else if(l_wn<l_n0){
							l_s1="`"+l_s1+"` requires at least "+gml_std_Std_stringify(l_n0)+" argument";
							if(l_n0!=1)l_s1+="s";
						} else {
							l_s1="`"+l_s1+"` takes no more than "+gml_std_Std_stringify(l_n1)+" argument";
							if(l_n1!=1)l_s1+="s";
						}
						l_s1+=", got "+string(l_wn);
						return gml_program_error(gml_program_seek_inst,l_s1,gml_std_haxe_enum_tools_getParameter(l_x,0));
					} else gml_std_haxe_enum_tools_setTo(l_q,[23,l_d,l_s1,l_w]);
				} else if(gml_parser_gml23){
					gml_std_haxe_enum_tools_setTo(l_q,[20,l_d,l_x,l_w]);
				} else return gml_program_error(gml_program_seek_inst,"`"+l_s1+"` is not a function or script",gml_std_haxe_enum_tools_getParameter(l_x,0));
				break;
			default:if(gml_parser_gml23)gml_std_haxe_enum_tools_setTo(l_q,[20,l_d,l_x,l_w]); else return gml_program_error(gml_program_seek_inst,"Expression is not callable",gml_std_haxe_enum_tools_getParameter(l_x,0));
		}
	}
	return gml_node_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_enum_fields_proc_one(l_q,l_st){
	var l__g=l_q;
	if(l__g[0]==41){
		var l_f=l__g[3];
		var l_x=l__g[2];
		var l_d=l__g[1];
		var l__g=l_x;
		if(l__g[0]==7){
			var l_s=l__g[2];
			var l_e=haxe_ds_basic_map_get(gml_program_seek_inst[5],l_s);
			if(l_e==undefined)l_e=haxe_ds_basic_map_get(gml_enum_map,l_s);
			if(l_e!=undefined){
				if(!l_e[5])gml_seek_enum_values_proc_one(l_e);
				var l_c=haxe_ds_basic_map_get(l_e[4],l_f);
				if(l_c!=undefined){
					if(l_c[4]==undefined)return gml_program_error(gml_program_seek_inst,"Recursive enum reference to "+l_s+"."+l_f,l_d);
					gml_std_haxe_enum_tools_setTo(l_q,[1,l_d,l_c[4],undefined]);
					return false;
				} else return gml_program_error(gml_program_seek_inst,"Enum `"+l_s+"` does not contain field `"+l_f+"`",l_d);
			}
		}
		if(haxe_ds_basic_map_exists(gml_var_flags,l_f)){
			if((haxe_ds_basic_map_get(gml_var_flags,l_f)&4)==0)return gml_program_error(gml_program_seek_inst,"`"+l_f+"` is not an instance-specific variable.",l_d);
		}
	}
	return gml_node_seek(l_q,l_st,gml_seek_enum_fields_proc_one);
}

if(live_enabled)
function gml_seek_enum_fields_proc(l_q,l_st){
	return gml_seek_enum_fields_proc_one(l_q,l_st);
}

if(live_enabled)
function gml_seek_enum_values_proc_one(l_e){
	l_e[@5]=true;
	var l_next=0;
	var l__g=0;
	var l__g1=l_e[3];
	while(l__g<array_length(l__g1)){
		var l_c=l__g1[l__g];
		l__g++;
		if(l_c[3]!=undefined){
			var l_st=ds_list_create();
			var l__seekFunc=gml_program_seek_func;
			gml_program_seek_func=gml_seek_idents_proc;
			gml_program_seek_script=undefined;
			gml_seek_idents_proc(l_c[3],l_st);
			gml_program_seek_func=l__seekFunc;
			ds_list_destroy(l_st);
			gml_seek_enum_fields_proc_one(l_c[3],undefined);
			gml_seek_eval_eval(l_c[3]);
			var l_node=l_c[3];
			var l_v=gml_seek_eval_node_to_value(l_node);
			if(is_numeric(l_v)){
				l_c[@4]=floor(l_v);
				l_next=l_c[4]+1;
			} else if(l_v!=gml_seek_eval_invalid_value){
				return gml_program_error(gml_program_seek_inst,"Enum values should be integer",gml_std_haxe_enum_tools_getParameter(l_node,0));
			} else return gml_program_error(gml_program_seek_inst,("Enum values should be constant"+gml_std_Type_enumConstructor(l_node)),gml_std_haxe_enum_tools_getParameter(l_c[3],0));
		} else l_c[@4]=l_next++;
	}
	return false;
}

if(live_enabled)
function gml_seek_enum_values_proc(){
	var l__g=0;
	var l__g1=gml_program_seek_inst[4];
	while(l__g<array_length(l__g1)){
		var l_e=l__g1[l__g];
		l__g++;
		if(gml_seek_enum_values_proc_one(l_e))return true;
	}
	return false;
}

if(live_enabled)
function gml_seek_eval_node_to_value(l_node){
	var l__g=l_node;
	switch(l__g[0]){
		case 0:return undefined;
		case 1:return l__g[2];
		case 2:return l__g[2];
		case 13:return haxe_ds_basic_map_get(gml_const_val,l__g[2]);
		case 3:return l__g[3][4];
		case 12:return l__g[3];
		default:return gml_seek_eval_invalid_value;
	}
}

if(live_enabled)
function gml_seek_eval_value_to_node(l_val,l_d){
	if(is_bool(l_val)){
		return [1,l_d,(l_val?1:0),undefined];
	} else if(is_numeric(l_val)){
		return [1,l_d,l_val,undefined];
	} else if(is_string(l_val)){
		return [2,l_d,l_val];
	} else if(l_val==undefined){
		return [0,l_d];
	} else return undefined;
}

if(live_enabled)
function gml_seek_eval_proc(l_q,l_st){
	var l_f1,l_f2;
	var l_z=true;
	var l_v1,l_v2,l_i,l_n;
	var l__g=l_q;
	switch(l__g[0]){
		case 0:break;
		case 1:break;
		case 2:break;
		case 13:break;
		case 30:
			var l__g3=l__g[2];
			if(l__g3==16){
				var l_b=l__g[4];
				var l_a=l__g[3];
				var l_d=l__g[1];
				if(gml_seek_eval_proc(l_a,l_st))l_z=false;
				if(gml_seek_eval_proc(l_b,l_st))l_z=false;
				if(l_z){
					l_v1=gml_seek_eval_node_to_value(l_a);
					l_v2=gml_seek_eval_node_to_value(l_b);
					if(is_string(l_v1)){
						if(is_string(l_v2)){
							gml_std_haxe_enum_tools_setTo(l_q,[2,l_d,l_v1+l_v2]);
						} else {
							var l__g=l_b;
							if(l__g[0]==30){
								if(l__g[2]==16){
									var l__hx_tmp=l__g[3];
									if(l__hx_tmp[0]==2){
										gml_std_haxe_enum_tools_setTo(l_q,[30,l_d,16,[2,l_d,l_v1+l__hx_tmp[2]],l__g[4]]);
									} else {
										gml_seek_eval_error_text="Can't add "+gml_std_Type_enumConstructor(l_a)+" and "+gml_std_Type_enumConstructor(l_b)+" at compile time";
										gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
										l_z=false;
									}
								} else {
									gml_seek_eval_error_text="Can't add "+gml_std_Type_enumConstructor(l_a)+" and "+gml_std_Type_enumConstructor(l_b)+" at compile time";
									gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
									l_z=false;
								}
							} else {
								gml_seek_eval_error_text="Can't add "+gml_std_Type_enumConstructor(l_a)+" and "+gml_std_Type_enumConstructor(l_b)+" at compile time";
								gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
								l_z=false;
							}
						}
					} else if(is_numeric(l_v1)){
						if(is_numeric(l_v2)){
							gml_std_haxe_enum_tools_setTo(l_q,[1,l_d,l_v1+l_v2,undefined]);
						} else {
							gml_seek_eval_error_text="Can't add "+gml_std_Type_enumConstructor(l_a)+" and "+gml_std_Type_enumConstructor(l_b)+" at compile time";
							gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
							l_z=false;
						}
					} else if(is_string(l_v2)){
						var l__g=l_a;
						if(l__g[0]==30){
							if(l__g[2]==16){
								var l__hx_tmp=l__g[4];
								if(l__hx_tmp[0]==2){
									gml_std_haxe_enum_tools_setTo(l_q,[30,l_d,16,l__g[3],[2,l_d,l__hx_tmp[2]+l_v2]]);
								} else {
									gml_seek_eval_error_text="Can't add "+gml_std_Type_enumConstructor(l_a)+" and "+gml_std_Type_enumConstructor(l_b)+" at compile time";
									gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
									l_z=false;
								}
							} else {
								gml_seek_eval_error_text="Can't add "+gml_std_Type_enumConstructor(l_a)+" and "+gml_std_Type_enumConstructor(l_b)+" at compile time";
								gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
								l_z=false;
							}
						} else {
							gml_seek_eval_error_text="Can't add "+gml_std_Type_enumConstructor(l_a)+" and "+gml_std_Type_enumConstructor(l_b)+" at compile time";
							gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
							l_z=false;
						}
					} else {
						gml_seek_eval_error_text="Can't add "+gml_std_Type_enumConstructor(l_a)+" and "+gml_std_Type_enumConstructor(l_b)+" at compile time";
						gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
						l_z=false;
					}
				}
			} else {
				var l_b1=l__g[4];
				var l_a1=l__g[3];
				var l_d=l__g[1];
				var l_o=l__g3;
				if(gml_seek_eval_proc(l_a1,l_st))l_z=false;
				if(gml_seek_eval_proc(l_b1,l_st))l_z=false;
				if(l_z){
					l_v1=gml_seek_eval_node_to_value(l_a1);
					l_v2=gml_seek_eval_node_to_value(l_b1);
					if(is_numeric(l_v1)&&is_numeric(l_v2)){
						l_f1=l_v1;
						l_f2=l_v2;
						switch(l_o){
							case 16:l_f1+=l_f2;break;
							case 17:l_f1-=l_f2;break;
							case 0:l_f1*=l_f2;break;
							case 1:l_f1/=l_f2;break;
							case 2:l_f1%=l_f2;break;
							case 3:l_f1=(l_f1 div l_f2);break;
							case 49:l_f1=(l_f1&l_f2);break;
							case 48:l_f1=(l_f1|l_f2);break;
							case 50:l_f1=(l_f1^l_f2);break;
							case 32:l_f1=(l_f1<<l_f2);break;
							case 33:l_f1=(l_f1>>l_f2);break;
							case 64:l_f1=l_f1==l_f2;break;
							case 65:l_f1=l_f1!=l_f2;break;
							case 67:l_f1=l_f1<=l_f2;break;
							case 69:l_f1=l_f1>=l_f2;break;
							case 66:l_f1=l_f1<l_f2;break;
							case 68:l_f1=l_f1>l_f2;break;
							case 80:l_f1=l_f1&&l_f2;break;
							case 96:l_f1=l_f1||l_f2;break;
							default:
								gml_seek_eval_error_text="Can't apply "+gml_op_get_name(l_o);
								gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
								l_z=false;
						}
						if(l_z)gml_std_haxe_enum_tools_setTo(l_q,[1,l_d,l_f1,undefined]);
					} else {
						gml_seek_eval_error_text="Can't apply "+gml_op_get_name(l_o)+" to "+gml_std_Type_enumConstructor(l_a1)+" and "+gml_std_Type_enumConstructor(l_b1);
						gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
						l_z=false;
					}
				}
			}
			break;
		case 23:
			var l_args1=l__g[3];
			var l_name=l__g[2];
			l_n=array_length(l_args1);
			for(l_i=0;l_i<l_n;l_i++){
				if(gml_seek_eval_proc(l_args1[l_i],l_st))l_z=false;
			}
			if(l_z&&haxe_ds_basic_map_get(gml_func_eval,l_name)){
				var l_evalArgs=array_create(l_n);
				var l_val;
				l_i=0;
				while(l_i<l_n){
					l_val=gml_seek_eval_node_to_value(l_args1[l_i]);
					if(l_val!=gml_seek_eval_invalid_value){
						l_evalArgs[@l_i]=l_val;
						l_i++;
					} else break;
				}
				if(l_i>=l_n){
					var l_th=gml_seek_eval_eval_thread;
					if(l_th==undefined){
						l_th=gml_thread_create(gml_program_seek_inst,gml_seek_eval_eval_actions,array_create(0),array_create(0),undefined,undefined,0);
						gml_seek_eval_eval_thread=l_th;
					}
					var l_th0=gml_thread_current;
					gml_thread_current=l_th;
					l_th[@1]=gml_thread_status_running;
					var l_fn=haxe_ds_basic_map_get(gml_func_script,l_name);
					var l_sf;
					if(l_n<81){
						l_sf=vm_gml_thread_exec_slice_funcs[l_n];
						l_val=l_sf(l_fn,l_evalArgs,0);
					} else l_val=vm_gml_thread_exec_slice_error();
					gml_thread_current=l_th0;
					if(l_th[1]!=gml_thread_status_error){
						var l_next=gml_seek_eval_value_to_node(l_val,gml_std_haxe_enum_tools_getParameter(l_q,0));
						if(l_next!=undefined){
							gml_std_haxe_enum_tools_setTo(l_q,l_next);
						} else {
							gml_seek_eval_error_text="Could not translate "+gml_value_print(l_val)+" ("+gml_value_get_type(l_val)+") compile-time";
							gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
						}
					} else {
						gml_seek_eval_error_text="Could not evaluate compile-time: "+l_th[6];
						gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
					}
				}
			}
			break;
		default:
			if(gml_seek_eval_eval_rec){
				if(gml_node_seek(l_q,l_st,gml_seek_eval_proc))l_z=false;
			} else {
				gml_seek_eval_error_text=gml_std_Type_enumConstructor(l_q)+" doesn't seem to be a constant expression.";
				gml_seek_eval_error_pos=gml_std_haxe_enum_tools_getParameter(l_q,0);
				l_z=false;
			}
	}
	return !l_z;
}

if(live_enabled)
function gml_seek_eval_eval(l_q){
	gml_seek_eval_eval_rec=false;
	var l_r=gml_seek_eval_proc(l_q,undefined);
	gml_seek_eval_eval_thread=undefined;
	return l_r;
}

if(live_enabled)
function gml_seek_eval_opt(){
	gml_seek_eval_eval_rec=true;
	gml_program_seek(gml_program_seek_inst,gml_seek_eval_proc);
	gml_seek_eval_eval_thread=undefined;
	return false;
}

if(live_enabled)
function gml_seek_fields_proc(l_q,l_st){
	var l__g=l_q;
	if(l__g[0]==41){
		var l_s=l__g[3];
		var l_x=l__g[2];
		var l_d=l__g[1];
		if(l_x[0]==10)gml_std_haxe_enum_tools_setTo(l_q,[38,l_d,l_s]);
	}
	return gml_node_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_idents_proc(l_q,l_st){
	var l_d,l_s;
	var l__g=l_q;
	if(l__g[0]==7){
		l_d=l__g[1];
		l_s=l__g[2];
	} else {
		l_d=undefined;
		l_s=undefined;
	}
	if(l_d!=undefined)while(true){
		var l_scr=gml_program_seek_script;
		if(l_scr!=undefined){
			var l_i=haxe_ds_basic_map_get(l_scr[9],l_s);
			if(l_i!=undefined){
				gml_std_haxe_enum_tools_setTo(l_q,[14,l_d,l_i]);
				if(false)continue; else break;
			}
			l_i=haxe_ds_basic_map_get(l_scr[6],l_s);
			if(l_i!=undefined){
				gml_std_haxe_enum_tools_setTo(l_q,[35,l_d,l_s]);
				if(false)continue; else break;
			}
		}
		var l_mcr=haxe_ds_basic_map_get(gml_program_seek_inst[6],l_s);
		if(l_mcr!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,gml_node_clone(l_mcr[2]));
			ast_gml_node_tools_ni_concat_pos_rec(l_q,l_d);
			gml_seek_idents_proc(l_q,l_st);
			if(false)continue; else break;
		}
		if(haxe_ds_basic_map_get(gml_const_map,l_s)==true){
			gml_std_haxe_enum_tools_setTo(l_q,gml_seek_eval_value_to_node(haxe_ds_basic_map_get(gml_const_val,l_s),l_d));
			if(false)continue; else break;
		}
		var l_flags=haxe_ds_basic_map_get(gml_var_flags,l_s);
		if(l_flags!=undefined){
			if((l_flags&4)!=0)gml_std_haxe_enum_tools_setTo(l_q,[47,l_d,[8,l_d],l_s]); else gml_std_haxe_enum_tools_setTo(l_q,[44,l_d,l_s]);
			if(ds_list_size(l_st)>0){
				var l__g=l_st[|0];
				switch(l__g[0]){
					case 56:
						var l_k=l__g[3];
						var l_d1=l__g[1];
						if((l_flags&2)!=0)gml_std_haxe_enum_tools_setTo(l_st[|0],[50,l_d1,l_s,l_k]); else return gml_program_error(gml_program_seek_inst,"`"+l_s+"` is not an array.",l_d1);
						break;
					case 61:return gml_program_error(gml_program_seek_inst,"`"+l_s+"` is not a 2d array.",l__g[1]);
					default:if((l_flags&2)!=0)gml_std_haxe_enum_tools_setTo(l_q,[50,l_d,l_s,[1,l_d,0,undefined]]);
				}
			}
			if(false)continue; else break;
		}
		var l_scr1=haxe_ds_basic_map_get(gml_program_seek_inst[3],l_s);
		if(l_scr1!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,[11,l_d,l_scr1]);
			if(false)continue; else break;
		}
		var l_fscr=haxe_ds_basic_map_get(gml_func_script_id,l_s);
		if(l_fscr!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,[12,l_d,l_s,l_fscr]);
			if(false)continue; else break;
		}
		if(!false)break;
	}
	return gml_node_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_locals_proc(l_q,l_st){
	var l__g=l_q;
	switch(l__g[0]){
		case 110:
			var l_s=l__g[3];
			if(!haxe_ds_basic_map_exists(gml_program_seek_script[6],l_s))haxe_ds_basic_map_set(gml_program_seek_script[6],l_s,gml_program_seek_script[@7]++);
			break;
		case 91:
			var l_s=l__g[2];
			if(!haxe_ds_basic_map_exists(gml_program_seek_script[6],l_s))haxe_ds_basic_map_set(gml_program_seek_script[6],l_s,gml_program_seek_script[@7]++);
			break;
	}
	return gml_node_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_self_fields_proc(l_q,l_st){
	var l__g=l_q;
	if(l__g[0]==7){
		var l_s=l__g[2];
		var l_d=l__g[1];
		gml_std_haxe_enum_tools_setTo(l_q,[41,l_d,[8,l_d],l_s]);
	}
	return gml_node_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_set_op_resolve_set_op_rfn(l_q,l_st){
	var l__g=l_q;
	switch(l__g[0]){
		case 58:
			if(gml_node_equals(gml_seek_set_op_resolve_set_op_xw,l__g[2])){
				gml_seek_set_op_resolve_set_op_safe=true;
				return true;
			}
			break;
		case 62:
			if(gml_node_equals(gml_seek_set_op_resolve_set_op_xw,l__g[2])){
				gml_seek_set_op_resolve_set_op_safe=true;
				return true;
			}
			break;
		case 63:
			if(gml_node_equals(gml_seek_set_op_resolve_set_op_xw,l__g[2])){
				gml_seek_set_op_resolve_set_op_safe=true;
				return true;
			}
			break;
		case 57:
			if(gml_node_equals(gml_seek_set_op_resolve_set_op_xw,l__g[2])){
				gml_seek_set_op_resolve_set_op_safe=true;
				return true;
			}
			break;
		case 31:
			var l_v2=l__g[4];
			if(gml_node_equals(gml_seek_set_op_resolve_set_op_xw,l__g[3])){
				var l__g1=l_v2;
				var l_tmp;
				if(l__g1[0]==4)l_tmp=true; else l_tmp=false;
				gml_seek_set_op_resolve_set_op_safe=l_tmp;
				return true;
			}
			break;
	}
	return gml_node_seek_all(l_q,l_st,gml_seek_set_op_resolve_set_op_rfn);
}

if(live_enabled)
function gml_seek_set_op_proc(l_q,l_st){
	var l__g=l_q;
	if(l__g[0]==31){
		var l_v=l__g[4];
		var l_x=l__g[3];
		var l_o=l__g[2];
		var l_d=l__g[1];
		var l__g=gml_node_unpack(l_x);
		switch(l__g[0]){
			case 35:
				var l_s=l__g[2];
				if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[37,l_d,l_s,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[36,l_d,l_s,l_v]);
				break;
			case 38:
				var l_s=l__g[2];
				if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[40,l_d,l_s,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[39,l_d,l_s,l_v]);
				break;
			case 14:break;
			case 15:break;
			case 41:
				var l_s=l__g[3];
				var l_x1=l__g[2];
				if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[43,l_d,l_x1,l_s,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[42,l_d,l_x1,l_s,l_v]);
				break;
			case 53:
				var l_i=l__g[3];
				var l_x1=l__g[2];
				if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[55,l_d,l_x1,l_i,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[54,l_d,l_x1,l_i,l_v]);
				break;
			case 61:
				var l_xw=l__g[2];
				var l_xd=l__g[1];
				var l__g1=l_x;
				switch(l__g1[0]){
					case 56:
						var l_xi=l__g1[3];
						if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[58,l_xd,l_xw,l_xi,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[57,l_xd,l_xw,l_xi,l_v]);
						break;
					case 61:
						var l_i2=l__g1[4];
						var l_i1=l__g1[3];
						if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[63,l_xd,l_xw,l_i1,l_i2,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[62,l_xd,l_xw,l_i1,l_i2,l_v]);
						break;
				}
				gml_seek_set_op_resolve_set_op_safe=false;
				gml_seek_set_op_resolve_set_op_xw=l_xw;
				gml_node_seek_all_out(l_q,l_st,gml_seek_set_op_resolve_set_op_rfn,0);
				if(!gml_seek_set_op_resolve_set_op_safe)gml_std_haxe_enum_tools_setTo(l_q,[92,l_xd,[[6,l_xd,gml_node_clone(l_xw)],gml_node_clone(l_q)]]);
				break;
			case 56:
				var l_xw=l__g[2];
				var l_xd=l__g[1];
				var l__g1=l_x;
				switch(l__g1[0]){
					case 56:
						var l_xi=l__g1[3];
						if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[58,l_xd,l_xw,l_xi,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[57,l_xd,l_xw,l_xi,l_v]);
						break;
					case 61:
						var l_i2=l__g1[4];
						var l_i1=l__g1[3];
						if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[63,l_xd,l_xw,l_i1,l_i2,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[62,l_xd,l_xw,l_i1,l_i2,l_v]);
						break;
				}
				gml_seek_set_op_resolve_set_op_safe=false;
				gml_seek_set_op_resolve_set_op_xw=l_xw;
				gml_node_seek_all_out(l_q,l_st,gml_seek_set_op_resolve_set_op_rfn,0);
				if(!gml_seek_set_op_resolve_set_op_safe)gml_std_haxe_enum_tools_setTo(l_q,[92,l_xd,[[6,l_xd,gml_node_clone(l_xw)],gml_node_clone(l_q)]]);
				break;
			case 44:
				var l_s=l__g[2];
				var l_f=haxe_ds_basic_map_get(gml_var_flags,l_s);
				if((l_f&1)==0){
					if((l_f&2)!=0){
						var l_k=[1,l_d,0,undefined];
						if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[52,l_d,l_s,l_k,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[51,l_d,l_s,l_k,l_v]);
					} else if(l_o!=-1){
						gml_std_haxe_enum_tools_setTo(l_q,[46,l_d,l_s,l_o,l_v]);
					} else gml_std_haxe_enum_tools_setTo(l_q,[45,l_d,l_s,l_v]);
				} else return gml_program_error(gml_program_seek_inst,"`"+l_s+"` is read-only",l__g[1]);
				break;
			case 47:
				var l_s=l__g[3];
				if((haxe_ds_basic_map_get(gml_var_flags,l_s)&1)==0){
					if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[49,l_d,l__g[2],l_s,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[48,l_d,l__g[2],l_s,l_v]);
				} else return gml_program_error(gml_program_seek_inst,"`"+l_s+"` is read-only",l__g[1]);
				break;
			case 50:
				var l_s=l__g[2];
				if((haxe_ds_basic_map_get(gml_var_flags,l_s)&1)==0){
					if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[52,l_d,l_s,l__g[3],l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[51,l_d,l_s,l__g[3],l_v]);
				} else return gml_program_error(gml_program_seek_inst,"`"+l_s+"` is read-only",l__g[1]);
				break;
			case 76:
				var l_k=l__g[3];
				var l_x1=l__g[2];
				if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[78,l_d,l_x1,l_k,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[77,l_d,l_x1,l_k,l_v]);
				break;
			case 81:
				var l_k=l__g[3];
				var l_x1=l__g[2];
				if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[83,l_d,l_x1,l_k,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[82,l_d,l_x1,l_k,l_v]);
				break;
			case 86:
				var l_k=l__g[4];
				var l_i=l__g[3];
				var l_x1=l__g[2];
				if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[88,l_d,l_x1,l_i,l_k,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[87,l_d,l_x1,l_i,l_k,l_v]);
				break;
			case 66:
				var l_k=l__g[3];
				var l_x1=l__g[2];
				if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[68,l_d,l_x1,l_k,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[67,l_d,l_x1,l_k,l_v]);
				break;
			case 71:
				var l_k=l__g[4];
				var l_i=l__g[3];
				var l_x1=l__g[2];
				if(l_o!=-1)gml_std_haxe_enum_tools_setTo(l_q,[73,l_d,l_x1,l_i,l_k,l_o,l_v]); else gml_std_haxe_enum_tools_setTo(l_q,[72,l_d,l_x1,l_i,l_k,l_v]);
				break;
			default:return gml_program_error(gml_program_seek_inst,"Expression is not settable",gml_std_haxe_enum_tools_getParameter(l_x,0));
		}
	}
	return gml_node_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_push(l_arr,l_val){
	var l_i=array_length(l_arr);
	l_arr[@l_i]=l_val;
	return l_i;
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_indexOf(l_arr,l_v,l_i){
	if(l_i==undefined)l_i=0;
	if(false)throw argument[2];
	var l_len=array_length(l_arr);
	if(l_i<0){
		l_i+=l_len;
		if(l_i<0)l_i=0;
	}
	while(l_i<l_len){
		if(l_arr[l_i]==l_v)return l_i;
		l_i++;
	}
	return -1;
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_join(l_arr,l_sep){
	var l_len=array_length(l_arr);
	if(l_len==0)return "";
	var l_buf=gml_std_gml_internal_ArrayImpl_join_buf;
	if(l_buf==undefined){
		l_buf=buffer_create(1024,buffer_grow,1);
		gml_std_gml_internal_ArrayImpl_join_buf=l_buf;
	}
	buffer_seek(l_buf,buffer_seek_start,0);
	buffer_write(l_buf,buffer_text,gml_std_Std_stringify(l_arr[0]));
	var l_i=1;
	for(var l__g1=l_len;l_i<l__g1;l_i++){
		buffer_write(l_buf,buffer_text,l_sep);
		buffer_write(l_buf,buffer_text,gml_std_Std_stringify(l_arr[l_i]));
	}
	buffer_write(l_buf,buffer_u8,0);
	buffer_seek(l_buf,buffer_seek_start,0);
	return buffer_read(l_buf,buffer_string);
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_slice(l_arr,l_pos,l_end){
	if(false)throw argument[2];
	var l_len=array_length(l_arr);
	if(l_pos<0){
		l_pos+=l_len;
		if(l_pos<0)l_pos=0;
	}
	if(l_end==undefined||l_end>l_len)l_end=l_len;
	var l_len=l_end-l_pos;
	var l_out=array_create(l_len);
	array_copy(l_out,0,l_arr,l_pos,l_len);
	return l_out;
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_copy(l_arr){
	var l_out;
	var l_len=array_length(l_arr);
	if(l_len>0){
		l_out=[];
		array_copy(l_out,0,l_arr,0,l_len);
	} else l_out=[];
	return l_out;
}

if(live_enabled)
function haxe__dynamic_access_dynamic_access_impl__copy(l_this1){
	var l_fields=variable_struct_get_names(l_this1);
	var l_r={}
	var l_i=0;
	for(var l__g1=array_length(l_fields);l_i<l__g1;l_i++){
		var l_fd=l_fields[l_i];
		variable_struct_set(l_r,l_fd,variable_struct_get(l_this1,l_fd));
	}
	return l_r;
}

if(live_enabled)
function gml_std_haxe_Exception_create(l_message,l_previous,l_native){
	var this=[mt_gml_std_haxe_Exception];
	array_copy(this,1,mq_gml_std_haxe_Exception,1,1);
	if(false)throw argument[2];
	this[@1]=(l_native!=undefined?l_native:this);
	return this;
}

if(live_enabled)
function gml_std_haxe_Exception_caught(l_value){
	if(is_struct(l_value)&&variable_struct_get(l_value,"__exception__")==true)return l_value;
	var l_e={
		value:l_value,
		message:string(l_value),
		longMessage:"",
		script:"",
		stacktrace:debug_get_callstack(),
		__exception__:true
	}
	l_e[@1]=l_e;
	return l_e;
}

if(live_enabled)
function gml_std_haxe_Exception_thrown(l_value){
	if(is_struct(l_value)&&variable_struct_get(l_value,"__exception__")==true)return l_value;
	var l_e={
		value:l_value,
		message:string(l_value),
		longMessage:"",
		script:"",
		stacktrace:debug_get_callstack(),
		__exception__:true
	}
	l_e[@1]=l_e;
	return l_e;
}

if(live_enabled)
function haxe_ds_basic_map_new(this){
	this[@3]=undefined;
	this[@2]=0;
	this[@1]={}
}

if(live_enabled)
function haxe_ds_basic_map_create(){
	var this=[mt_haxe_ds_basic_map];
	array_copy(this,1,mq_haxe_ds_basic_map,1,3);
	haxe_ds_basic_map_new(this);
	return this;
}

if(live_enabled)
function haxe_ds_basic_map_clear(this){
	var l_obj=this[1];
	var l_keys=variable_struct_get_names(l_obj);
	var l_keyCount=array_length(l_keys);
	if(this[2]==l_keyCount)return 0;
	var l_blank=haxe_ds_basic_map_blank;
	var l_i=-1;
	while(++l_i<l_keyCount){
		variable_struct_set(l_obj,l_keys[l_i],l_blank);
	}
	this[@2]=l_keyCount;
}

if(live_enabled)
function haxe_ds_basic_map_exists(this,l_key){
	if(variable_struct_exists(this[1],l_key)){
		if(this[2]>0)return variable_struct_get(this[1],l_key)!=haxe_ds_basic_map_blank; else return true;
	} else return false;
}

if(live_enabled)
function haxe_ds_basic_map_get(this,l_key){
	var l_val=variable_struct_get(this[1],l_key);
	if(l_val!=haxe_ds_basic_map_blank)return l_val; else return undefined;
}

if(live_enabled)
function haxe_ds_basic_map_set(this,l_key,l_val){
	if(this[2]>0){
		var l_cachedKeys=this[3];
		if(l_cachedKeys!=undefined){
			if(variable_struct_exists(this[1],l_key)){
				if(variable_struct_get(this[1],l_key)==haxe_ds_basic_map_blank)this[@2]--;
			} else l_cachedKeys[@array_length(l_cachedKeys)]=l_key;
		} else if(variable_struct_get(this[1],l_key)==haxe_ds_basic_map_blank){
			this[@2]--;
		}
	}
	variable_struct_set(this[1],l_key,l_val);
}

if(live_enabled)
function haxe_ds_basic_map_remove(this,l_key){
	if(variable_struct_exists(this[1],l_key)){
		if(this[2]>0){
			if(variable_struct_get(this[1],l_key)==haxe_ds_basic_map_blank)return false;
			this[@3]=undefined;
		}
		variable_struct_set(this[1],l_key,haxe_ds_basic_map_blank);
		this[@2]++;
		return true;
	} else return false;
}

if(live_enabled)
function haxe_ds_string_map_create(){
	var this=[mt_haxe_ds_string_map];
	array_copy(this,1,mq_haxe_ds_string_map,1,3);
	haxe_ds_basic_map_new(this);
	return this;
}

if(live_enabled)
function live_async_http_0(l_map){
	var l_i,l_n,l_s,l_list,l_names,l_srcMap;
	live_is_ready=true;
	live_request_guid=l_map[?"guid"];
	if(l_map[?"version"]==undefined||l_map[?"version"]<105)throw gml_std_haxe_Exception_thrown("Outdated GMLive server detected! Please update the included files from the extension.");
	l_list=l_map[?"shaders"];
	l_n=ds_list_size(l_list);
	for(l_i=0;l_i<l_n;l_i++){
		l_s=l_list[|l_i];
		gml_asset_add(l_s,asset_get_index(l_s));
	}
	for(var l__=0;l__<1;l__++){
		l_list=l_map[?"animCurves"];
		if(l_list==undefined){
			live_log("Server init response is missing an animCurves list. You may need to update the server.");
			continue;
		}
		l_n=ds_list_size(l_list);
		for(l_i=0;l_i<l_n;l_i++){
			l_s=l_list[|l_i];
			gml_asset_add(l_s,asset_get_index(l_s));
		}
	}
	l_list=l_map[?"scripts"];
	l_n=ds_list_size(l_list);
	for(l_i=0;l_i<l_n;l_i+=2){
		var l_scrName=l_list[|l_i];
		var l_scrFunc=asset_get_index(l_scrName);
		if(l_scrFunc==-1)l_scrFunc=asset_get_index(l_scrName);
		gml_func_add(l_list[|l_i+1],l_scrFunc);
		haxe_ds_basic_map_set(gml_func_script_id,l_scrName,l_scrFunc);
	}
	l_list=l_map[?"globals"];
	l_n=ds_list_size(l_list);
	if(l_n>0){
		var l_buf=buffer_create(1024,buffer_grow,1);
		buffer_seek(l_buf,buffer_seek_start,0);
		buffer_write(l_buf,buffer_text,"globalvar ");
		buffer_write(l_buf,buffer_text,l_list[|0]);
		for(l_i=1;l_i<l_n;l_i++){
			buffer_write(l_buf,buffer_text,", ");
			buffer_write(l_buf,buffer_text,l_list[|l_i]);
		}
		buffer_write(l_buf,buffer_string,";");
		buffer_seek(l_buf,buffer_seek_start,0);
		live_live_globals=gml_source_create("globalvar",buffer_read(l_buf,buffer_string),"globalvar",true);
		buffer_delete(l_buf);
	} else live_live_globals=undefined;
	l_srcMap=live_live_macros;
	haxe_ds_basic_map_clear(l_srcMap);
	l_list=l_map[?"macros"];
	l_n=ds_list_size(l_list);
	for(l_i=0;l_i<l_n;l_i+=2){
		l_s=l_list[|l_i];
		var l_s1="macro:"+l_s;
		haxe_ds_basic_map_set(l_srcMap,l_s,gml_source_create(l_s1,"#macro "+l_s+" "+gml_std_Std_stringify(l_list[|l_i+1]),l_s1,true));
	}
	l_srcMap=live_live_enums;
	haxe_ds_basic_map_clear(l_srcMap);
	l_list=l_map[?"enums"];
	l_names=l_map[?"enumnames"];
	l_n=ds_list_size(l_list);
	for(l_i=0;l_i<l_n;l_i++){
		l_s=l_list[|l_i];
		l_s=l_names[|l_i];
		haxe_ds_basic_map_set(l_srcMap,l_s,gml_source_create("enum "+l_s,l_list[|l_i],"enum "+l_s,true));
	}
	live_log("Ready!");
}

if(live_enabled)
function live_async_http_1(l_map){
	var l_list=l_map[?"files"];
	var l_n=ds_list_size(l_list);
	var l_name;
	var l_i=-1;
	while(++l_i<l_n){
		var l_fmap=l_list[|l_i];
		var l_ident=l_fmap[?"ident"];
		var l_code=l_fmap[?"code"];
		l_name=l_fmap[?"name"];
		live_update_script(l_name,l_ident,l_code);
	}
	l_list=l_map[?"sprites"];
	if(l_list!=undefined){
		l_n=ds_list_size(l_list);
		l_i=-1;
		while(++l_i<l_n){
			var l_sup=l_list[|l_i];
			l_name=l_sup[?"name"];
			var l_spr=asset_get_index(l_name);
			if(l_spr==-1){
				live_log("Error: can't find sprite "+l_name+" for reload.");
				continue;
			}
			var l_sx=l_sup[?"xorig"];
			var l_sy=l_sup[?"yorig"];
			var l_frames=l_sup[?"frames"];
			var l_out=-1;
			var l_tmp=live_temp_path+".png";
			var l_i1=0;
			for(var l__g1=ds_list_size(l_frames);l_i1<l__g1;l_i1++){
				var l_tb=buffer_base64_decode(l_frames[|l_i1]);
				if(l_tb==-1){
					live_log("Error: couldn't decode base64 for "+l_name+".");
					continue;
				}
				buffer_save(l_tb,l_tmp);
				buffer_delete(l_tb);
				var l_ts=sprite_add(l_tmp,1,false,false,l_sx,l_sy);
				if(l_ts==-1){
					live_log("Error: couldn't load image "+string(l_i1)+" for "+l_name+".");
					continue;
				}
				if(l_i1!=0)sprite_merge(l_out,l_ts); else l_out=l_ts;
			}
			if(l_out!=-1){
				sprite_assign(l_spr,l_out);
				sprite_collision_mask(l_spr,l_sup[?"sepMasks"],l_sup[?"bboxMode"],l_sup[?"bboxLeft"],l_sup[?"bboxTop"],l_sup[?"bboxRight"],l_sup[?"bboxBottom"],l_sup[?"colKind"],l_sup[?"colTolerance"]);
				sprite_delete(l_out);
				live_log("Reloaded "+l_name+".");
			}
			file_delete(l_tmp);
		}
	}
	l_list=l_map[?"shadersUpd"];
	if(l_list!=undefined){
		l_n=ds_list_size(l_list);
		l_i=-1;
		while(++l_i<l_n){
			var l_sup=l_list[|l_i];
			l_name=l_sup[?"name"];
			live_shader_updated(asset_get_index(l_name),l_sup[?"vertex"],l_sup[?"fragment"]);
			live_log("Reloaded "+l_name+".");
		}
	}
	l_list=l_map[?"rooms"];
	if(l_list!=undefined){
		l_n=ds_list_size(l_list);
		l_i=-1;
		while(++l_i<l_n){
			var l_ru=l_list[|l_i];
			var l_rq=asset_get_index(l_ru[?"name"]);
			live_live_room_data[?l_rq]=l_ru[?"json"];
			live_room_updated(l_rq);
		}
	}
}

if(live_enabled)
function live_async_http_check(l_e){
	return l_e[?"id"]==live_request_id&&l_e[?"status"]<=0;
}

function live_async_http(l_e){
	if(false)throw argument[0];
	if(live_enabled){
		if(l_e==undefined)l_e=async_load;
		if(!live_async_http_check(l_e))return 0;
		live_request_id=undefined;
		if(l_e[?"status"]<0||l_e[?"result"]==undefined)return 0;
		var l_json=l_e[?"result"];
		var l_map=json_decode(l_json);
		if(l_map==-1||ds_map_exists(l_map,"default")){
			if(string_char_at(l_json,1)=="{"&&string_char_at(l_json,string_length(l_json)-1+1)=="]")l_json+="}";
			l_map=json_decode(l_json);
			if(l_map==-1||ds_map_exists(l_map,"default")){
				live_log("Invalid JSON response ("+gml_std_Std_stringify(string_length(l_json)/1000)+" KB)");
				return 0;
			}
		}
		if(live_request_guid==undefined)live_async_http_0(l_map);
		live_async_http_1(l_map);
		ds_map_destroy(l_map);
	}
}

if(live_enabled)
function live_shader_updated_default(){
	throw gml_std_haxe_Exception_thrown("Can't update shader! You have not assigned a script to live_shader_updated. Please check documentation");
}

function shader_set_live(l_sh,l_live1){
	if(live_enabled){
		var l_i;
		if(l_live1){
			if(ds_map_exists(live_shader_live_shaders,l_sh))return 0;
			live_shader_live_shaders[?l_sh]=true;
			l_i=ds_list_find_index(live_shader_live_shaders_stop,l_sh);
			if(l_i>=0)ds_list_delete(live_shader_live_shaders_stop,l_i);
			ds_list_add(live_shader_live_shaders_start,l_sh);
		} else {
			if(!ds_map_exists(live_shader_live_shaders,l_sh))return 0;
			ds_map_delete(live_shader_live_shaders,l_sh);
			l_i=ds_list_find_index(live_shader_live_shaders_start,l_sh);
			if(l_i>=0)ds_list_delete(live_shader_live_shaders_start,l_i);
			ds_list_add(live_shader_live_shaders_stop,l_sh);
		}
	}
}

if(live_enabled)
function live_temp_path_init(){
	var l_now=gml_std_Date_now();
	return "gmlive-"+gml_std_Std_stringify(gml_std_Date_getTime(l_now));
}

if(live_enabled)
function live_script_get_index(l_name){
	return asset_get_index(l_name);
}

if(live_enabled)
function live_log_impl(l_v){
	show_debug_message(l_v);
}

if(live_enabled)
function live_log(l_s){
	live_log_script("[live]["+date_datetime_string(gml_std_Date_now()[1])+"] "+l_s);
}

if(live_enabled)
function live_update_script_impl_add_source(l_name,l_acc,l_found,l_m){
	haxe_ds_basic_map_set(l_found,l_name,true);
	var l_tokenCount=l_m[7];
	if(l_tokenCount<0)return 0;
	var l_tokens=l_m[6];
	if(l_tokens==undefined){
		l_tokens=gml_parser_run(l_m);
		if(l_tokens==undefined){
			l_m[@7]=-1;
			return 0;
		}
		l_tokenCount=gml_parser_tokens_found;
		l_m[@6]=l_tokens;
		l_m[@7]=l_tokenCount;
	}
	ds_list_add(l_acc,l_m);
	live_update_script_impl_index_rec(l_tokens,l_tokenCount,l_acc,l_found);
}

if(live_enabled)
function live_update_script_impl_index_rec(l_tokens,l_tokensLen,l_acc,l_found){
	var l_tokensLen1=l_tokensLen-1;
	var l_tokensPos=-1;
	var l_macros=live_live_macros;
	var l_enums=live_live_enums;
	while(++l_tokensPos<l_tokensLen){
		var l_tk=l_tokens[l_tokensPos];
		var l_id;
		if(l_tk[0]==10)l_id=l_tk[2]; else continue;
		if(haxe_ds_basic_map_exists(l_found,l_id))continue;
		var l_src=haxe_ds_basic_map_get(l_macros,l_id);
		if(l_src!=undefined){
			live_update_script_impl_add_source(l_id,l_acc,l_found,l_src);
			continue;
		}
		l_src=haxe_ds_basic_map_get(l_enums,l_id);
		if(l_src!=undefined){
			if(l_tokensPos>0){
				if(l_tokens[l_tokensPos-1][0]==5)continue;
			}
			if(l_tokensPos<l_tokensLen1){
				var l__g3=l_tokens[l_tokensPos+1];
				if(l__g3[0]==5)var l__g4=l__g3[1]; else continue;
			}
			live_update_script_impl_add_source(l_id,l_acc,l_found,l_src);
			continue;
		}
		haxe_ds_basic_map_set(l_found,l_id,true);
	}
}

function live_update_script_impl(l_name,l_ident,l_code){
	if(live_enabled){
		var l_found=live_async_http_1_found;
		var l_acc=live_async_http_1_acc;
		var l_data=haxe_ds_basic_map_get(live_live_map,l_ident);
		if(l_data==undefined){
			l_data=[undefined,l_ident];
			haxe_ds_basic_map_set(live_live_map,l_ident,l_data);
		}
		var l_source=gml_source_create(l_name,l_code,l_name);
		var l_tokens=gml_parser_run(l_source);
		if(l_tokens==undefined){
			live_log("Error in "+l_name+":");
			live_log(gml_parser_error_text);
			return 0;
		}
		haxe_ds_basic_map_clear(l_found);
		ds_list_clear(l_acc);
		if(live_live_globals!=undefined)ds_list_add(l_acc,live_live_globals);
		l_source[@6]=l_tokens;
		l_source[@7]=gml_parser_tokens_found;
		live_update_script_impl_index_rec(l_tokens,l_source[7],l_acc,l_found);
		ds_list_add(l_acc,l_source);
		var l_srci=ds_list_size(l_acc);
		var l_srcs=array_create(l_srci);
		while(--l_srci>=0){
			l_srcs[@l_srci]=l_acc[|l_srci];
		}
		var l_pg=gml_program_create(l_srcs);
		if(!l_pg[13]){
			live_log("Error in "+l_name+":");
			live_log(l_pg[11]);
			gml_program_destroy(l_pg);
			return 0;
		}
		if(l_pg[11]!=undefined){
			live_log("Warning in "+l_name+":");
			live_log(l_pg[11]);
		}
		l_pg[@14]=l_name;
		l_pg[@15]=l_ident;
		live_log("Reloaded "+l_name+".");
		if(l_data[0]!=undefined)gml_program_destroy(l_data[0]);
		l_data[@0]=l_pg;
	}
}

function live_call(){
	if(false)throw argument[argument_count-1];
	if(live_enabled){
		var l_def=0;
		if(live_request_guid==undefined){
			live_name=undefined;
			return false;
		} else {
			var l_origin;
			if(live_name!=undefined){
				l_origin=live_name;
				live_name=undefined;
			} else {
				var l_stack=debug_get_callstack();
				l_origin=l_stack[1];
			}
			var l_data=haxe_ds_basic_map_get(live_live_map,l_origin);
			if(l_data==undefined){
				var l_co=gml_std_string_pos_ext_haxe(l_origin,":");
				if(l_co>=0){
					var l_oclip=gml_std_string_substr(l_origin,0,l_co);
					l_data=haxe_ds_basic_map_get(live_live_map,l_oclip);
					if(l_data==undefined&&gml_std_string_substr(l_oclip,0,11)=="gml_Script_"){
						l_oclip=gml_std_string_substring(l_oclip,11);
						l_data=haxe_ds_basic_map_get(live_live_map,l_oclip);
					}
					if(l_data!=undefined)haxe_ds_basic_map_set(live_live_map,l_origin,l_data);
				} else if(gml_std_string_substr(l_origin,0,11)=="gml_Script_"){
					l_data=haxe_ds_basic_map_get(live_live_map,gml_std_string_substring(l_origin,11));
					if(l_data!=undefined)haxe_ds_basic_map_set(live_live_map,l_origin,l_data);
				}
			}
			if(l_data==undefined){
				return false;
			} else {
				var l_pg=l_data[0];
				if(l_pg==undefined){
					return false;
				} else {
					live_custom_self=self;
					live_custom_other=other;
					var l_scriptName=l_pg[14];
					var l_argc=argument_count;
					var l_vals=array_create(l_argc);
					while(--l_argc>=0){
						l_vals[@l_argc]=argument[l_argc];
					}
					var l_th=gml_program_call_v(l_pg,l_scriptName,l_vals,false);
					if(l_th==undefined){
						live_result=l_def;
						live_log("`"+((l_scriptName==undefined?"null":gml_std_Std_stringify(l_scriptName)))+"` is missing from the live program for some reason (?)");
						return false;
					} else if(l_th[1]==gml_thread_status_done){
						live_result=l_th[0];
						return true;
					} else if(l_th[1]==gml_thread_status_error){
						live_result=l_def;
						live_log("Runtime error: "+gml_thread_get_error(l_th));
						return true;
					} else return false;
				}
			}
		}
	}else return false;
}

function live_defcall(){
	if(false)throw argument[argument_count-1];
	if(live_enabled){
		var l_argc=argument_count-1;
		var l_def=argument[l_argc];
		if(live_request_guid==undefined){
			live_name=undefined;
			return false;
		} else {
			var l_origin;
			if(live_name!=undefined){
				l_origin=live_name;
				live_name=undefined;
			} else {
				var l_stack=debug_get_callstack();
				l_origin=l_stack[1];
			}
			var l_data=haxe_ds_basic_map_get(live_live_map,l_origin);
			if(l_data==undefined){
				var l_co=gml_std_string_pos_ext_haxe(l_origin,":");
				if(l_co>=0){
					var l_oclip=gml_std_string_substr(l_origin,0,l_co);
					l_data=haxe_ds_basic_map_get(live_live_map,l_oclip);
					if(l_data==undefined&&gml_std_string_substr(l_oclip,0,11)=="gml_Script_"){
						l_oclip=gml_std_string_substring(l_oclip,11);
						l_data=haxe_ds_basic_map_get(live_live_map,l_oclip);
					}
					if(l_data!=undefined)haxe_ds_basic_map_set(live_live_map,l_origin,l_data);
				} else if(gml_std_string_substr(l_origin,0,11)=="gml_Script_"){
					l_data=haxe_ds_basic_map_get(live_live_map,gml_std_string_substring(l_origin,11));
					if(l_data!=undefined)haxe_ds_basic_map_set(live_live_map,l_origin,l_data);
				}
			}
			if(l_data==undefined){
				return false;
			} else {
				var l_pg=l_data[0];
				if(l_pg==undefined){
					return false;
				} else {
					live_custom_self=self;
					live_custom_other=other;
					var l_scriptName=l_pg[14];
					var l_vals=array_create(l_argc);
					while(--l_argc>=0){
						l_vals[@l_argc]=argument[l_argc];
					}
					var l_th=gml_program_call_v(l_pg,l_scriptName,l_vals,false);
					if(l_th==undefined){
						live_result=l_def;
						live_log("`"+((l_scriptName==undefined?"null":gml_std_Std_stringify(l_scriptName)))+"` is missing from the live program for some reason (?)");
						return false;
					} else if(l_th[1]==gml_thread_status_done){
						live_result=l_th[0];
						return true;
					} else if(l_th[1]==gml_thread_status_error){
						live_result=l_def;
						live_log("Runtime error: "+gml_thread_get_error(l_th));
						return true;
					} else return false;
				}
			}
		}
	}else return false;
}

function live_call_ext(l_args1){
	if(live_enabled){
		var l_def=0;
		if(live_request_guid==undefined){
			live_name=undefined;
			return false;
		} else {
			var l_origin;
			if(live_name!=undefined){
				l_origin=live_name;
				live_name=undefined;
			} else {
				var l_stack=debug_get_callstack();
				l_origin=l_stack[1];
			}
			var l_data=haxe_ds_basic_map_get(live_live_map,l_origin);
			if(l_data==undefined){
				var l_co=gml_std_string_pos_ext_haxe(l_origin,":");
				if(l_co>=0){
					var l_oclip=gml_std_string_substr(l_origin,0,l_co);
					l_data=haxe_ds_basic_map_get(live_live_map,l_oclip);
					if(l_data==undefined&&gml_std_string_substr(l_oclip,0,11)=="gml_Script_"){
						l_oclip=gml_std_string_substring(l_oclip,11);
						l_data=haxe_ds_basic_map_get(live_live_map,l_oclip);
					}
					if(l_data!=undefined)haxe_ds_basic_map_set(live_live_map,l_origin,l_data);
				} else if(gml_std_string_substr(l_origin,0,11)=="gml_Script_"){
					l_data=haxe_ds_basic_map_get(live_live_map,gml_std_string_substring(l_origin,11));
					if(l_data!=undefined)haxe_ds_basic_map_set(live_live_map,l_origin,l_data);
				}
			}
			if(l_data==undefined){
				return false;
			} else {
				var l_pg=l_data[0];
				if(l_pg==undefined){
					return false;
				} else {
					live_custom_self=self;
					live_custom_other=other;
					var l_scriptName=l_pg[14];
					var l_th=gml_program_call_v(l_pg,l_scriptName,gml_value_list_copy(l_args1),false);
					if(l_th==undefined){
						live_result=l_def;
						live_log("`"+((l_scriptName==undefined?"null":gml_std_Std_stringify(l_scriptName)))+"` is missing from the live program for some reason (?)");
						return false;
					} else if(l_th[1]==gml_thread_status_done){
						live_result=l_th[0];
						return true;
					} else if(l_th[1]==gml_thread_status_error){
						live_result=l_def;
						live_log("Runtime error: "+gml_thread_get_error(l_th));
						return true;
					} else return false;
				}
			}
		}
	}else return false;
}

function live_defcall_ext(l_args1,l_def){
	if(live_enabled){
		if(live_request_guid==undefined){
			live_name=undefined;
			return false;
		} else {
			var l_origin;
			if(live_name!=undefined){
				l_origin=live_name;
				live_name=undefined;
			} else {
				var l_stack=debug_get_callstack();
				l_origin=l_stack[1];
			}
			var l_data=haxe_ds_basic_map_get(live_live_map,l_origin);
			if(l_data==undefined){
				var l_co=gml_std_string_pos_ext_haxe(l_origin,":");
				if(l_co>=0){
					var l_oclip=gml_std_string_substr(l_origin,0,l_co);
					l_data=haxe_ds_basic_map_get(live_live_map,l_oclip);
					if(l_data==undefined&&gml_std_string_substr(l_oclip,0,11)=="gml_Script_"){
						l_oclip=gml_std_string_substring(l_oclip,11);
						l_data=haxe_ds_basic_map_get(live_live_map,l_oclip);
					}
					if(l_data!=undefined)haxe_ds_basic_map_set(live_live_map,l_origin,l_data);
				} else if(gml_std_string_substr(l_origin,0,11)=="gml_Script_"){
					l_data=haxe_ds_basic_map_get(live_live_map,gml_std_string_substring(l_origin,11));
					if(l_data!=undefined)haxe_ds_basic_map_set(live_live_map,l_origin,l_data);
				}
			}
			if(l_data==undefined){
				return false;
			} else {
				var l_pg=l_data[0];
				if(l_pg==undefined){
					return false;
				} else {
					live_custom_self=self;
					live_custom_other=other;
					var l_scriptName=l_pg[14];
					var l_th=gml_program_call_v(l_pg,l_scriptName,gml_value_list_copy(l_args1),false);
					if(l_th==undefined){
						live_result=l_def;
						live_log("`"+((l_scriptName==undefined?"null":gml_std_Std_stringify(l_scriptName)))+"` is missing from the live program for some reason (?)");
						return false;
					} else if(l_th[1]==gml_thread_status_done){
						live_result=l_th[0];
						return true;
					} else if(l_th[1]==gml_thread_status_error){
						live_result=l_def;
						live_log("Runtime error: "+gml_thread_get_error(l_th));
						return true;
					} else return false;
				}
			}
		}
	}else return false;
}

function sprite_set_live(l_spr,l_live1){
	if(live_enabled){
		var l_i;
		if(l_live1){
			if(ds_map_exists(live_live_sprites,l_spr))return 0;
			live_live_sprites[?l_spr]=true;
			l_i=ds_list_find_index(live_live_sprites_stop,l_spr);
			if(l_i>=0)ds_list_delete(live_live_sprites_stop,l_i);
			ds_list_add(live_live_sprites_start,l_spr);
		} else {
			if(!ds_map_exists(live_live_sprites,l_spr))return 0;
			ds_map_delete(live_live_sprites,l_spr);
			l_i=ds_list_find_index(live_live_sprites_start,l_spr);
			if(l_i>=0)ds_list_delete(live_live_sprites_start,l_i);
			ds_list_add(live_live_sprites_stop,l_spr);
		}
	}
}

function room_set_live(l_rm,l_enable){
	if(live_enabled){
		var l_i;
		if(l_enable){
			if(ds_map_exists(live_live_rooms,l_rm))return 0;
			live_live_rooms[?l_rm]=true;
			l_i=ds_list_find_index(live_live_rooms_stop,l_rm);
			if(l_i>=0)ds_list_delete(live_live_rooms_stop,l_i);
			ds_list_add(live_live_rooms_start,l_rm);
		} else {
			if(!ds_map_exists(live_live_rooms,l_rm))return 0;
			ds_map_delete(live_live_rooms,l_rm);
			ds_map_delete(live_live_room_data,l_rm);
			l_i=ds_list_find_index(live_live_rooms_start,l_rm);
			if(l_i>=0)ds_list_delete(live_live_rooms_start,l_i);
			ds_list_add(live_live_rooms_stop,l_rm);
		}
	}
}

function room_goto_live(l_rm){
	if(live_enabled){
		if(ds_map_exists(live_live_rooms,l_rm)&&ds_map_exists(live_live_room_data,l_rm)){
			live_live_room=l_rm;
			if(!room_exists(live_blank_room))throw gml_std_haxe_Exception_thrown("Please add a completely empty room, add live_room_start(); to it's Creation Code, and assign it to live_blank_room in obj_gmlive's create event.");
			room_goto(live_blank_room);
			return 0;
		}
		room_goto(l_rm);
	}
}

if(live_enabled)
function live_room_updated_impl(l_rm){
	room_goto_live(l_rm);
}

function live_constant_add(l_name,l_value){
	if(live_enabled){
		gml_const_add(l_name,l_value);
	}
}

function live_constant_delete(l_name){
	if(live_enabled){
		return gml_remove_const(l_name);
	}else return false;
}

function live_variable_add(l_signature,l_func){
	if(live_enabled){
		gml_var_add(l_signature,l_func);
	}
}

function live_variable_delete(l_name){
	if(live_enabled){
		return gml_remove_var(l_name);
	}else return false;
}

function live_function_add(l_signature,l_func){
	if(live_enabled){
		var l_s=l_signature;
		var l_p0=gml_std_string_pos_ext_haxe(l_s,"(")+1;
		var l_p1=gml_std_string_pos_ext_haxe(l_s,")");
		var l_argv=gml_std_StringTools_trim(gml_std_string_substring(l_s,l_p0,l_p1));
		var l_flags=gml_std_string_substring(l_s,l_p1+1);
		var l_argc,l_arg1;
		var l_arg0=-1;
		var l_argt;
		var l_rest=gml_type_check_any;
		if(l_argv==""){
			l_argc=0;
			l_arg1=0;
			l_argt=array_create(0);
		} else {
			var l_args1=gml_std_string_split(l_argv,",");
			l_argc=array_length(l_args1);
			l_arg1=l_argc;
			l_argt=array_create(l_argc);
			var l_tmap=gml_type_check_map;
			var l_i=0;
			for(var l__g1=l_argc;l_i<l__g1;l_i++){
				var l_arg=l_args1[l_i];
				var l_pos=gml_std_string_pos_ext_haxe(l_arg,"=");
				var l_opt=false;
				if(l_pos>=0){
					l_opt=true;
					l_arg=gml_std_string_substring(l_arg,0,l_pos);
				} else if(gml_std_string_pos_ext_haxe(l_arg,"...")>=0){
					l_arg1=81;
					l_argc=-1;
					l_opt=true;
				}
				l_pos=gml_std_string_pos_ext_haxe(l_arg,":");
				if(l_pos>=0){
					var l_name=gml_std_string_substring(l_arg,0,l_pos);
					if(gml_std_string_pos_ext_haxe(l_name,"?")>=0)l_opt=true;
					var l_type=gml_std_StringTools_trim(gml_std_string_substring(l_arg,l_pos+1));
					if(haxe_ds_basic_map_exists(l_tmap,l_type)){
						var l_tfun=haxe_ds_basic_map_get(l_tmap,l_type);
						if(gml_std_string_pos_ext_haxe(l_arg,"...")>=0)l_rest=l_tfun;
						l_argt[@l_i]=l_tfun;
					} else throw gml_std_haxe_Exception_thrown("\""+l_type+"\" is not a known type (in argument["+string(l_i)+"] \""+l_arg+"\" in \""+l_signature+"\")");
				} else l_argt[@l_i]=gml_type_check_any;
				if(l_opt&&l_arg0<0)l_arg0=l_i;
			}
			if(gml_std_string_pos_ext_haxe(l_argv,"...")>=0||gml_std_string_pos_ext_haxe(l_argv,"?")>=0||gml_std_string_pos_ext_haxe(l_argv,"=")>=0)l_argc=-1;
		}
		if(l_argc<0){
			if(l_arg0<0)l_arg0=0;
		} else {
			l_arg1=l_argc;
			l_arg0=l_argc;
		}
		var l_i=0;
		var l_inst=0;
		if(string_ord_at(l_s,l_i+1)==58){
			l_i++;
			l_inst++;
		}
		if(string_ord_at(l_s,l_i+1)==58){
			l_i++;
			l_inst++;
		}
		if(string_ord_at(l_s,l_i+1)==58){
			l_i++;
			l_inst++;
		}
		if(string_ord_at(l_s,l_i+1)==36&&string_ord_at(l_s,l_i+1+1)==123){
			var l_k=gml_std_string_pos_ext_haxe(l_s,"}",l_i+2);
			if(l_k<0)throw gml_std_haxe_Exception_thrown("Unclosed $(meta)");
			if(gml_std_string_substring(l_s,l_i+2,l_k)=="raw")l_inst=-5; else throw gml_std_haxe_Exception_thrown("Unknown meta $("+gml_std_string_substring(l_s,l_i+2,l_k)+")");
			l_i=l_k+1;
		}
		var l_name=gml_parse_name(l_s,l_i);
		if(l_inst!=0)haxe_ds_basic_map_set(gml_inst_data,l_name,l_inst);
		haxe_ds_basic_map_set(gml_func_eval,l_name,gml_std_string_pos_ext_haxe(l_flags,"#")>=0);
		haxe_ds_basic_map_set(gml_func_args,l_name,l_argt);
		haxe_ds_basic_map_set(gml_func_rest,l_name,l_rest);
		haxe_ds_basic_map_set(gml_func_arg0,l_name,l_arg0);
		haxe_ds_basic_map_set(gml_func_arg1,l_name,l_arg1);
		haxe_ds_basic_map_set(gml_func_script,l_name,l_func);
		haxe_ds_basic_map_set(gml_func_sig,l_name,l_s);
	}
}

function live_function_delete(l_name){
	if(live_enabled){
		return gml_remove_func(l_name);
	}else return false;
}

function live_throw_error(l_text){
	if(live_enabled){
		throw gml_std_haxe_Exception_thrown(l_text);
	}
}

function live_execute_string(l_gml_code){
	if(false)throw argument[argument_count-1];
	if(live_enabled){
		var l_pg=gml_program_create([gml_source_create("execute_string",l_gml_code,"execute_string")]);
		var l_ok;
		live_custom_self=self;
		live_custom_other=other;
		if(l_pg[11]==undefined){
			var l_argc=(argument_count-1);
			var l_argv=array_create(l_argc);
			var l_i=0;
			var l__=0;
			for(var l__g1=l_argc;l__<l__g1;l__++){
				l_argv[@l_i]=argument[l_i+1];
				l_i++;
			}
			var l_th=gml_program_call_v(l_pg,"execute_string",l_argv,false);
			if(l_th[1][0]==3){
				l_ok=true;
				live_result=l_th[0];
			} else {
				l_ok=false;
				live_result=l_th[6];
				if(live_result==undefined)live_result="(unknown error)";
			}
		} else {
			l_ok=false;
			live_result=l_pg[11];
		}
		gml_program_destroy(l_pg);
		return l_ok;
	}else return false;
}

function live_snippet_create(l_gml_code,l_name){
	if(l_name==undefined)l_name="snippet";
	if(false)throw argument[1];
	if(live_enabled){
		var l_pg=gml_program_create([gml_source_create(l_name,l_gml_code,"snippet")]);
		if(l_pg[11]==undefined){
			return l_pg;
		} else {
			live_result=l_pg[11];
			gml_program_destroy(l_pg);
			return undefined;
		}
	}else return undefined;
}

function live_snippet_destroy(l_snippet){
	if(live_enabled){
		if(l_snippet[2]!=undefined)gml_program_destroy(l_snippet); else throw gml_std_haxe_Exception_thrown("This snippet is already destroyed");
	}
}

function live_snippet_call(l_snippet){
	if(false)throw argument[argument_count-1];
	if(live_enabled){
		var l_argc=(argument_count-1);
		var l_argv=array_create(l_argc);
		var l_i=0;
		var l__=0;
		for(var l__g1=l_argc;l__<l__g1;l__++){
			l_argv[@l_i]=argument[l_i+1];
			l_i++;
		}
		live_custom_self=self;
		live_custom_other=other;
		var l_th=gml_program_call_v(l_snippet,"snippet",l_argv,false);
		if(l_th==undefined){
			live_result="(script missing)";
			return false;
		} else if(l_th[1][0]==3){
			live_result=l_th[0];
			return true;
		} else {
			live_result=l_th[6];
			if(live_result==undefined)live_result="(unknown error)";
			return false;
		}
	}else return false;
}

function live_update(){
	if(live_enabled){
		if(live_request_url==undefined)return 0;
		if(live_request_id==undefined){
			var l_now=current_time;
			if(l_now>live_request_time){
				live_request_time=l_now+live_request_rate*1000;
				var l_url;
				if(live_request_guid==undefined){
					l_url=live_request_url+"/init?password="+live_request_password+"&version="+string(105)+"&config="+os_get_config()+"&runtime="+GM_runtime_version;
				} else {
					l_url=live_request_url+"/update?guid="+((live_request_guid==undefined?"null":live_request_guid));
					var l_sl=live_live_sprites_stop;
					var l_sln=ds_list_size(l_sl);
					if(l_sln>0){
						l_url+="&sprites"+string(0)+"="+sprite_get_name(l_sl[|0]);
						var l_i=1;
						for(var l__g1=l_sln;l_i<l__g1;l_i++){
							l_url+="+"+sprite_get_name(l_sl[|l_i]);
						}
						ds_list_clear(l_sl);
					}
					var l_sl=live_live_sprites_start;
					var l_sln=ds_list_size(l_sl);
					if(l_sln>0){
						l_url+="&sprites"+string(1)+"="+sprite_get_name(l_sl[|0]);
						var l_i=1;
						for(var l__g1=l_sln;l_i<l__g1;l_i++){
							l_url+="+"+sprite_get_name(l_sl[|l_i]);
						}
						ds_list_clear(l_sl);
					}
					var l_sl=live_shader_live_shaders_stop;
					var l_sln=ds_list_size(l_sl);
					if(l_sln>0){
						l_url+="&shaders"+string(0)+"="+shader_get_name(l_sl[|0]);
						var l_i=1;
						for(var l__g1=l_sln;l_i<l__g1;l_i++){
							l_url+="+"+shader_get_name(l_sl[|l_i]);
						}
						ds_list_clear(l_sl);
					}
					var l_sl=live_shader_live_shaders_start;
					var l_sln=ds_list_size(l_sl);
					if(l_sln>0){
						l_url+="&shaders"+string(1)+"="+shader_get_name(l_sl[|0]);
						var l_i=1;
						for(var l__g1=l_sln;l_i<l__g1;l_i++){
							l_url+="+"+shader_get_name(l_sl[|l_i]);
						}
						ds_list_clear(l_sl);
					}
					var l_rl=live_live_rooms_stop;
					var l_rln=ds_list_size(l_rl);
					if(l_rln>0){
						l_url+="&rooms"+string(0)+"="+room_get_name(l_rl[|0]);
						var l_i=1;
						for(var l__g1=l_rln;l_i<l__g1;l_i++){
							l_url+="+"+room_get_name(l_rl[|l_i]);
						}
						ds_list_clear(l_rl);
					}
					var l_rl=live_live_rooms_start;
					var l_rln=ds_list_size(l_rl);
					if(l_rln>0){
						l_url+="&rooms"+string(1)+"="+room_get_name(l_rl[|0]);
						var l_i=1;
						for(var l__g1=l_rln;l_i<l__g1;l_i++){
							l_url+="+"+room_get_name(l_rl[|l_i]);
						}
						ds_list_clear(l_rl);
					}
				}
				live_request_id=http_get(l_url);
			}
		}
	}
}

function live_init(l_updateRate,l_url,l_password){
	if(live_enabled){
		if(l_url!=undefined){
			var l_url_last=string_length(l_url)-1;
			if(string_ord_at(l_url,l_url_last+1)==47)l_url=gml_std_string_substring(l_url,0,l_url_last);
		}
		live_log("Initializing...");
		live_request_rate=l_updateRate;
		live_request_url=l_url;
		live_request_password=l_password;
		var l_srs=asset_get_index("shader_replace_simple");
		if(l_srs!=-1)live_shader_updated=l_srs;
		live_log("Indexing assets...");
		var l_s;
		for(var l_i=0;sprite_exists(l_i);l_i++){
			gml_asset_add(sprite_get_name(l_i),l_i);
		}
		for(l_i=0;font_exists(l_i);l_i++){
			gml_asset_add(font_get_name(l_i),l_i);
		}
		for(l_i=0;object_exists(l_i);l_i++){
			gml_asset_add(object_get_name(l_i),l_i);
		}
		for(l_i=0;audio_exists(l_i);l_i++){
			gml_asset_add(audio_get_name(l_i),l_i);
		}
		for(l_i=0;l_i<1024&&string_ord_at(tileset_get_name(l_i),1)!=60;l_i++){
			gml_asset_add(tileset_get_name(l_i),l_i);
		}
		for(l_i=0;room_exists(l_i);l_i++){
			gml_asset_add(room_get_name(l_i),l_i);
		}
		for(l_i=0;path_exists(l_i);l_i++){
			gml_asset_add(path_get_name(l_i),l_i);
		}
		for(l_i=0;timeline_exists(l_i);l_i++){
			gml_asset_add(timeline_get_name(l_i),l_i);
		}
		for(l_i=0;l_i<256;l_i++){
			l_s=audio_group_name(l_i);
			if(l_s=="<undefined>"||l_s==""||l_s==undefined)break;
			gml_asset_add(l_s,l_i);
		}
		if(l_url==undefined)for(l_i=0;script_exists(l_i);l_i++){
			l_s=script_get_name(l_i);
			gml_func_add(l_s+"(...)",l_i);
			haxe_ds_basic_map_set(gml_func_script_id,l_s,l_i);
		}
		live_log("Indexed OK!");
	}
}

if(live_enabled)
function live_preinit_project_fake_call(){
	live_name=undefined;
	return false;
}

if(live_enabled)
function live_preinit_project_lf(l_write,l_val){
	if(l_write){
		live_name=l_val;
		return l_val;
	} else return live_name;
}

if(live_enabled)
function live_preinit_project(){
	gml_var_add("live_name",live_preinit_project_lf);
	gml_const_add("live_result",false);
	gml_func_add("live_call(...):",live_preinit_project_fake_call);
	gml_func_add("live_defcall(...):",live_preinit_project_fake_call);
	gml_func_add("live_call_ext(...):",live_preinit_project_fake_call);
	gml_func_add("live_defcall_ext(...):",live_preinit_project_fake_call);
	gml_func_add("live_method(self, func):",live_method);
	gml_func_add("live_execute_string(:string):",live_execute_string);
	gml_func_add("live_snippet_create(:string, :string=\"snippet\"):",live_snippet_create);
	gml_func_add("live_snippet_call(snip, ...rest):",live_snippet_call);
	gml_func_add("live_snippet_destroy(snip):",live_snippet_destroy);
	gml_func_add("sprite_set_live(spr:index, status:bool)",sprite_set_live);
	gml_func_add("shader_set_live(sh:index, status:bool)",sprite_set_live);
	gml_func_add("room_set_live(rm:index, status:bool)",sprite_set_live);
	gml_func_add("room_goto_live(rm:index)",room_goto_live);
}

if(live_enabled)
function live_room_loader_run_cc(l_ccRaw,l_ccPath){
	var l_ccProgram=gml_program_create([gml_source_create(l_ccPath,l_ccRaw,l_ccPath)]);
	var l_ccError=l_ccProgram[11];
	if(l_ccError==undefined){
		var l_ccThread=gml_program_call_v(l_ccProgram,l_ccPath,array_create(0));
		if(l_ccThread[1]!=gml_thread_status_done){
			l_ccError=l_ccThread[6];
			if(l_ccError==undefined)l_ccError=l_ccPath+": unknown execution error";
		}
	}
	gml_program_destroy(l_ccProgram);
	if(l_ccError!=undefined)live_log(l_ccError);
}

if(live_enabled)
function live_room_loader_init_physics(l_phs){
	if(l_phs==undefined)return 0;
	if(l_phs[?"PhysicsWorld"]){
		live_room_loader_use_physics=true;
		physics_world_create(l_phs[?"PhysicsWorldPixToMeters"]);
		physics_world_gravity(l_phs[?"PhysicsWorldGravityX"],l_phs[?"PhysicsWorldGravityY"]);
	} else live_room_loader_use_physics=false;
}

if(live_enabled)
function live_room_loader_anim_speed(l_val,l_type){
	if(l_type=="0")return l_val/room_speed; else return l_val;
}

if(live_enabled)
function live_room_loader_run_yy_inst_cc(l_inst,l_qinst){
	with (l_inst) {
		var l_rname=l_qinst[?"name"];
		event_perform(14,0);
		var l_rcc=l_qinst[?"propertyCode"];
		if(l_rcc!=undefined&&l_rcc!="")live_room_loader_run_cc(l_rcc,l_rname+":Properties");
		event_perform(ev_create,0);
		l_rcc=l_qinst[?"creationCode"];
		if(l_rcc!=undefined&&l_rcc!="")live_room_loader_run_cc(l_rcc,l_rname+":CreationCode");
	}
}

if(live_enabled)
function live_room_loader_add_layer(l_ql){
	var l_ql_depth=l_ql[?"depth"];
	var l_ql_name=l_ql[?"name"];
	var l_rl,l_i,l_n,l_f,l_s,l_aval,l_rx,l_ry;
	switch(l_ql[?"modelName"]){
		case "GMRLayer":
			l_rl=layer_get_id(l_ql_name);
			if(l_rl==-1){
				l_rl=layer_create(l_ql_depth,l_ql_name);
				if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
			}
			var l_sublayers=l_ql[?"layers"];
			var l_i=ds_list_size(l_sublayers);
			while(--l_i>=0){
				live_room_loader_add_layer(l_sublayers[|l_i]);
			}
			break;
		case "GMRBackgroundLayer":
			if(live_room_loader_apply_backgrounds){
				l_rl=layer_get_id(l_ql_name);
				if(l_rl==-1){
					l_rl=layer_create(l_ql_depth,l_ql_name);
					if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
				}
				var l_qb=l_ql;
				l_s=l_qb[?"sprite"];
				var l_rb=layer_background_create(l_rl,(l_s!=undefined?asset_get_index(l_s):-1));
				l_aval=l_qb[?"color"];
				if(l_aval!=undefined){
					layer_background_blend(l_rb,(l_aval&16777215));
					layer_background_alpha(l_rb,((l_aval>>24)/255));
				}
				l_aval=l_qb[?"htiled"];
				if(l_aval!=undefined)layer_background_htiled(l_rb,l_aval); else layer_background_htiled(l_rb,true);
				l_aval=l_qb[?"vtiled"];
				if(l_aval!=undefined)layer_background_vtiled(l_rb,l_aval); else layer_background_vtiled(l_rb,true);
				l_aval=l_qb[?"stretch"];
				if(l_aval!=undefined)layer_background_stretch(l_rb,l_aval); else layer_background_stretch(l_rb,false);
				l_aval=l_qb[?"animationFPS"];
				if(l_aval!=undefined)layer_background_speed(l_rb,live_room_loader_anim_speed(l_aval,l_qb[?"animationSpeedType"]));
				l_aval=l_qb[?"x"];
				if(l_aval==undefined)l_aval=0;
				layer_x(l_rl,live_room_loader_room_x+l_aval);
				l_aval=l_qb[?"y"];
				if(l_aval==undefined)l_aval=0;
				layer_y(l_rl,live_room_loader_room_y+l_aval);
			}
			break;
		case "GMRTileLayer":
			if(live_room_loader_apply_tiles){
				l_rl=layer_get_id(l_ql_name);
				if(l_rl==-1){
					l_rl=layer_create(l_ql_depth,l_ql_name);
					if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
				}
				var l_qt=l_ql;
				var l_qtt=l_qt[?"tiles"];
				var l_qtw=l_qtt[?"SerialiseWidth"];
				var l_qth=l_qtt[?"SerialiseHeight"];
				var l_rt=layer_tilemap_create(l_rl,live_room_loader_room_x+l_qt[?"x"],live_room_loader_room_y+l_qt[?"y"],asset_get_index(l_qt[?"tileset"]),l_qtw,l_qth);
				var l_qtd=l_qtt[?"TileSerialiseData"];
				var l_qti=0;
				var l_y=0;
				for(var l__g1=l_qth;l_y<l__g1;l_y++){
					var l_x=0;
					for(var l__g3=l_qtw;l_x<l__g3;l_x++){
						tilemap_set(l_rt,l_qtd[|l_qti++],l_x,l_y);
					}
				}
			}
			break;
		case "GMRInstanceLayer":
			if(live_room_loader_apply_instances){
				l_rl=layer_get_id(l_ql_name);
				if(l_rl==-1){
					l_rl=layer_create(l_ql_depth,l_ql_name);
					if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
				}
				var l_qi=l_ql;
				l_rx=live_room_loader_room_x;
				l_ry=live_room_loader_room_y;
				var l_instances=l_qi[?"instances"];
				l_n=ds_list_size(l_instances);
				var l_base=live_blank_object;
				if(l_n!=0){
					if(!object_exists(l_base))throw gml_std_haxe_Exception_thrown("Please add a blank object and set live_blank_object to point at it in obj_gmlive's create event.");
				}
				var l_lco=live_room_loader_object_cache;
				l_i=l_n;
				while(--l_i>=0){
					var l_qinst=l_instances[|l_i];
					var l_rnext=instance_create_layer((l_rx+l_qinst[?"x"]),(l_ry+l_qinst[?"y"]),l_rl,l_base);
					var l_qid=l_qinst[?"name"];
					live_room_loader_inst_map_yy[?l_qid]=l_qinst;
					live_room_loader_inst_map_gml[?l_qid]=l_rnext;
					with (l_rnext) {
						gml_const_add(l_qinst[?"name"],self);
						l_aval=l_qinst[?"rotation"];
						if(l_aval!=undefined)self.image_angle=l_aval;
						l_aval=l_qinst[?"scaleX"];
						if(l_aval!=undefined)self.image_xscale=l_aval;
						l_aval=l_qinst[?"scaleY"];
						if(l_aval!=undefined)self.image_yscale=l_aval;
						l_aval=l_qinst[?"imageIndex"];
						if(l_aval!=undefined)self.image_index=l_aval;
						l_aval=l_qinst[?"imageSpeed"];
						if(l_aval!=undefined)self.image_speed=l_aval;
						l_f=l_qinst[?"color"];
						if(l_f!=undefined){
							self.image_blend=(l_f&16777215);
							self.image_alpha=(l_f>>24)/255;
						}
						l_s=l_qinst[?"obj"];
						var l_id=l_lco[?l_s];
						if(l_id==undefined){
							l_id=asset_get_index(l_s);
							l_lco[?l_s]=l_id;
						}
						instance_change(l_id,false);
					}
				}
			}
			break;
		case "GMRAssetLayer":
			if(live_room_loader_apply_sprites){
				l_rl=layer_get_id(l_ql_name);
				if(l_rl==-1){
					l_rl=layer_create(l_ql_depth,l_ql_name);
					if(l_ql[?"visible"]!=undefined)layer_set_visible(l_rl,l_ql[?"visible"]);
				}
				var l_sprites=l_ql[?"assets"];
				l_n=ds_list_size(l_sprites);
				var l_lcs=live_room_loader_sprite_cache;
				l_rx=live_room_loader_room_x;
				l_ry=live_room_loader_room_y;
				l_i=-1;
				while(++l_i<l_n){
					var l_qspr=l_sprites[|l_i];
					l_s=l_qspr[?"sprite"];
					var l_rspr=l_rx+l_qspr[?"x"];
					var l_rspr1=l_ry+l_qspr[?"y"];
					var l_id=l_lcs[?l_s];
					if(l_id==undefined){
						l_id=asset_get_index(l_s);
						l_lcs[?l_s]=l_id;
					}
					var l_rspr2=layer_sprite_create(l_rl,l_rspr,l_rspr1,l_id);
					l_aval=l_qspr[?"frameIndex"];
					if(l_aval!=undefined)layer_sprite_index(l_rspr2,l_aval);
					l_aval=l_qspr[?"scaleX"];
					if(l_aval!=undefined)layer_sprite_xscale(l_rspr2,l_aval);
					l_aval=l_qspr[?"scaleY"];
					if(l_aval!=undefined)layer_sprite_yscale(l_rspr2,l_aval);
					l_aval=l_qspr[?"rotation"];
					if(l_aval!=undefined)layer_sprite_angle(l_rspr2,l_aval);
					l_f=l_qspr[?"color"];
					if(l_f!=undefined){
						layer_sprite_blend(l_rspr2,(l_f&16777215));
						layer_sprite_alpha(l_rspr2,((l_f>>24)/255));
					}
					if(l_qspr[?"userdefined_animFPS"])layer_sprite_speed(l_rspr2,live_room_loader_anim_speed(l_qspr[?"animationFPS"],l_qspr[?"animationSpeedType"]));
				}
			}
			break;
	}
}

if(live_enabled)
function live_room_loader_run_impl2(l_rm){
	live_log("Loading "+l_rm[?"name"]+"...");
	ds_map_clear(live_room_loader_inst_map_gml);
	ds_map_clear(live_room_loader_inst_map_yy);
	if(live_room_loader_apply_settings){
		room_width=l_rm[?"roomSettings"][?"Width"];
		room_height=l_rm[?"roomSettings"][?"Height"];
		live_room_loader_init_physics(l_rm[?"physicsSettings"]);
	}
	var l_aval;
	var l_lrs=l_rm[?"layers"];
	var l_lrk=ds_list_size(l_lrs);
	while(--l_lrk>=0){
		live_room_loader_add_layer(l_lrs[|l_lrk]);
	}
	var l__g_list=l_rm[?"instanceCreationOrderIDs"];
	var l__g_index=0;
	while(l__g_index<ds_list_size(l__g_list)){
		var l_id=l__g_list[|l__g_index++];
		var l_qinst=live_room_loader_inst_map_yy[?l_id];
		if(l_qinst==undefined){
			live_log(l_id+" is in instanceCreationOrderIDs but no instance exists.");
			continue;
		}
		live_room_loader_run_yy_inst_cc(live_room_loader_inst_map_gml[?l_id],l_qinst);
	}
	ds_map_clear(live_room_loader_inst_map_gml);
	ds_map_clear(live_room_loader_inst_map_yy);
	if(live_room_loader_apply_views){
		l_aval=l_rm[?"viewSettings"][?"enableViews"];
		if(l_aval!=undefined)view_enabled=l_aval; else view_enabled=false;
		var l_qvs=l_rm[?"views"];
		if(l_qvs!=undefined){
			var l_i=0;
			for(var l__g1=ds_list_size(l_qvs);l_i<l__g1;l_i++){
				var l_qv=l_qvs[|l_i];
				if(l_qv==undefined)continue;
				var l_rv=l_i;
				l_aval=l_qv[?"visible"];
				if(l_aval!=undefined)view_visible[l_rv]=l_aval; else view_visible[l_rv]=false;
				l_aval=l_qv[?"xport"];
				if(l_aval!=undefined)view_xport[l_rv]=l_aval; else view_xport[l_rv]=0;
				l_aval=l_qv[?"yport"];
				if(l_aval!=undefined)view_yport[l_rv]=l_aval; else view_yport[l_rv]=0;
				l_aval=l_qv[?"wport"];
				if(l_aval!=undefined)view_wport[l_rv]=l_aval; else view_wport[l_rv]=1024;
				l_aval=l_qv[?"hport"];
				if(l_aval!=undefined)view_hport[l_rv]=l_aval; else view_hport[l_rv]=768;
				var l_rc=view_camera[l_rv];
				var l_vx,l_vy;
				l_vx=l_qv[?"xview"];
				if(l_vx==undefined)l_vx=0;
				l_vy=l_qv[?"yview"];
				if(l_vy==undefined)l_vy=0;
				camera_set_view_pos(l_rc,live_room_loader_room_x+l_vx,live_room_loader_room_y+l_vy);
				l_vx=l_qv[?"wview"];
				if(l_vx==undefined)l_vx=1024;
				l_vy=l_qv[?"hview"];
				if(l_vy==undefined)l_vy=768;
				camera_set_view_size(l_rc,l_vx,l_vy);
				l_aval=l_qv[?"obj"];
				if(l_aval!=undefined)camera_set_view_target(l_rc,asset_get_index(l_aval));
				l_vx=l_qv[?"hspeed"];
				if(l_vx==undefined)l_vx=-1;
				l_vy=l_qv[?"vspeed"];
				if(l_vy==undefined)l_vy=-1;
				camera_set_view_speed(l_rc,l_vx,l_vy);
				l_vx=l_qv[?"hborder"];
				if(l_vx==undefined)l_vx=32;
				l_vy=l_qv[?"vborder"];
				if(l_vy==undefined)l_vy=32;
				camera_set_view_border(l_rc,l_vx,l_vy);
			}
		}
	}
	var l_s=l_rm[?"creationCode"];
	if(l_s!=undefined&&l_s!="")live_room_loader_run_cc(l_s,l_rm[?"name"]+":CreationCode");
}

function live_room_start(){
	if(live_enabled){
		var l_rq=live_live_room;
		if(!room_exists(l_rq))throw gml_std_haxe_Exception_thrown("No live room was specified.");
		var l_rd=live_live_room_data[?l_rq];
		if(l_rd==undefined){
			live_log("Warning: no live data had been received yet for "+room_get_name(l_rq)+", transitioning to the regular version.");
			room_goto(l_rq);
			return 0;
		}
		var l_rm2=json_decode(l_rd);
		live_room_loader_run_impl2(l_rm2);
		ds_map_destroy(l_rm2);
	}
}

if(live_enabled)
function gml_link_create(l_value,l_next){
	var this=array_create(2);
	this[@0]=l_value;
	this[@1]=l_next;
	return this;
}

if(live_enabled)
function gml_stack_push(l_this1,l_v){
	var l_i=l_this1[0]+1;
	if(l_i>=array_length(l_this1))l_this1[@array_length(l_this1)*2]=0;
	l_this1[@l_i]=l_v;
	l_this1[@0]=l_i;
}

if(live_enabled)
function gml_stack_pop(l_this1){
	var l_i=l_this1[0];
	var l_r=l_this1[l_i];
	l_this1[@l_i]=0;
	l_this1[@0]=l_i-1;
	return l_r;
}

if(live_enabled)
function gml_stack_pop_multi(l_this1,l_n){
	var l_arr=[];
	var l_k=l_this1[0]-l_n;
	array_copy(l_arr,0,l_this1,l_k+1,l_n);
	array_copy(l_this1,l_k+1,gml_stack_fill_value_arr,0,l_n);
	l_this1[@0]=l_k;
	return l_arr;
}

if(live_enabled)
function gml_stack_discard(l_this1){
	var l_i=l_this1[0];
	l_this1[@l_i]=0;
	l_this1[@0]=l_i-1;
}

if(live_enabled)
function gml_stack_discard_multi(l_this1,l_n){
	var l_i=l_this1[0]-l_n;
	array_copy(l_this1,l_i+1,gml_stack_fill_value_arr,0,l_n);
	l_this1[@0]=l_i;
}

if(live_enabled)
function gml_action_list_print_action_get_func_name(l_func){
	if(is_method(l_func))return script_get_name(method_get_index(l_func));
	if(is_numeric(l_func)&&script_exists(l_func))return script_get_name(l_func);
	return gml_std_Std_stringify(l_func);
}

if(live_enabled)
function gml_action_list_print_action(l_act){
	var l_pos=gml_std_haxe_enum_tools_getParameter(l_act,0);
	var l_r="L"+string(l_pos[2])+"\tc"+string(l_pos[3])+"\t"+gml_std_Type_enumConstructor(l_act);
	switch(l_act[0]){
		case 48:return l_r+"("+l_act[2][1]+", "+string(l_act[3])+")";
		case 8:return l_r+"("+gml_std_gml_internal_ArrayImpl_join(l_act[2],",")+")";
		case 28:return l_r+"(\""+gml_action_list_print_action_get_func_name(l_act[2])+"\", \""+gml_action_list_print_action_get_func_name(l_act[3])+"\")";
		case 27:return l_r+"(\""+gml_action_list_print_action_get_func_name(l_act[2])+"\")";
		case 51:
			var l_args1=l_act[4];
			l_r+="(\""+gml_action_list_print_action_get_func_name(l_act[2])+"\", "+string(l_act[3])+", [";
			var l_sep=false;
			var l__g=0;
			while(l__g<array_length(l_args1)){
				var l_f=l_args1[l__g];
				l__g++;
				if(l_sep)l_r+=","; else l_sep=true;
				l_r+=script_get_name(l_f);
			}
			l_r+="], "+script_get_name(l_act[5])+(", "+gml_std_Std_stringify(l_act[6])+", "+(string(l_act[7]))+")");
			return l_r;
	}
	var l_argc=gml_std_haxe_enum_tools_getParameterCount(l_act);
	if(l_argc>1){
		l_r+="(";
		var l_k=1;
		for(var l__g1=l_argc;l_k<l__g1;l_k++){
			if(l_k>1)l_r+=", ";
			var l_v=gml_std_haxe_enum_tools_getParameter(l_act,l_k);
			if(is_numeric(l_v)){
				l_r+=gml_std_Std_stringify(l_v);
			} else if(is_string(l_v)){
				l_r+="\""+gml_std_Std_stringify(l_v)+"\"";
			} else if(l_v==undefined){
				l_r+="null";
			} else l_r+=gml_std_Std_stringify(l_v);
		}
		l_r+=")";
	}
	return l_r;
}

if(live_enabled)
function gml_action_list_print(l_this1){
	var l_r="";
	var l_i=0;
	for(var l__g1=ds_list_size(l_this1);l_i<l__g1;l_i++){
		var l_act=l_this1[|l_i];
		if(l_i>0)l_r+="\n";
		l_r+=string(l_i)+"\t"+gml_action_list_print_action(l_act);
	}
	return l_r;
}

if(live_enabled)
function gml_thread_scope_create(l_actions,l_offset,l_args1,l_locals,l_self1,l_other1,l_next){
	var this=[mt_gml_thread_scope];
	array_copy(this,1,mq_gml_thread_scope,1,10);
	this[@8]=undefined;
	this[@7]=undefined;
	this[@5]=array_create(16);
	this[@1]=l_actions;
	this[@2]=l_offset;
	this[@3]=l_args1;
	this[@4]=l_locals;
	this[@6]=[2,l_other1,l_self1];
	this[@10]=l_next;
	return this;
}

if(live_enabled)
function gml_thread_create(l_program,l_actions,l_args1,l_locals,l_self1,l_other1,l_offset){
	var this=array_create(8);
	if(l_offset==undefined)l_offset=0;
	if(false)throw argument[6];
	this[@7]=undefined;
	this[@6]=undefined;
	this[@5]=undefined;
	this[@2]=undefined;
	this[@1]=gml_thread_status_none;
	this[@0]=undefined;
	if(l_self1==undefined)l_self1=live_custom_self;
	if(l_other1==undefined)l_other1=live_custom_other;
	this[@3]=gml_thread_scope_create(l_actions,l_offset,l_args1,l_locals,l_self1,l_other1,undefined);
	this[3][@9]=l_program;
	return this;
}

if(live_enabled)
function gml_thread_error(l_text){
	throw gml_std_haxe_Exception_thrown(l_text);
}

if(live_enabled)
function gml_thread_get_error(this){
	return this[6];
}

if(live_enabled)
function gml_thread_get_error_ptr(this){
	if(this[7]!=undefined)return gml_pos_to_string(this[7]); else return "?";
}

if(live_enabled)
function gml_thread_stack_error(this,l_pos,l_e){
	var l_text;
	if(is_struct(l_e)&&variable_struct_exists(l_e,"stacktrace")){
		l_text=(variable_struct_exists(l_e,"message")?string(l_e.message):"(error without a message?)");
		var l_st=l_e.stacktrace;
		var l_i=0;
		for(var l__g1=array_length(l_st);l_i<l__g1;l_i++){
			var l_js=l_st[l_i];
			if(is_string(l_js)){
				if(gml_std_StringTools_startsWith(l_js,"gml_Script_vm_group_")){
					l_text+="\n called from vm:"+gml_std_string_substring(l_js,string_length("gml_Script_vm_group_"));
				} else if(gml_std_StringTools_startsWith(l_js,"gml_Script_")||gml_std_StringTools_startsWith(l_js,"gml_Object_")){
					l_text+="\n called from game:"+gml_std_string_substring(l_js,string_length("gml_Script_"));
				} else l_text+="\n called from "+l_js;
			} else l_text+="\n called from "+string(l_js);
		}
	} else l_text=gml_std_Std_stringify(l_e);
	var l_s="[error] "+l_text+"\n called from "+gml_pos_to_string(l_pos);
	var l_q=this[3];
	if(l_q!=undefined)for(l_q=this[3][10];l_q!=undefined;l_q=l_q[10]){
		var l_p=l_q[2];
		var l_ap=gml_std_haxe_enum_tools_getParameter(l_q[1][|(l_p>0?l_p-1:0)],0);
		l_s+="\n called from "+gml_pos_to_string(l_ap);
	}
	return l_s;
}

if(live_enabled)
function gml_thread_proc_error(this,l_text,l_act){
	var l_pos=gml_std_haxe_enum_tools_getParameter(l_act,0);
	this[@6]=gml_thread_stack_error(this,l_pos,l_text);
	this[@7]=l_pos;
	this[@1]=gml_thread_status_error;
	return false;
}

if(live_enabled)
function gml_thread_proc_error2(this,l_e,l_act){
	var l_pos=gml_std_haxe_enum_tools_getParameter(l_act,0);
	this[@6]=gml_thread_stack_error(this,l_pos,l_e);
	this[@7]=l_pos;
	this[@1]=gml_thread_status_error;
	return gml_thread_proc_result_error;
}

if(live_enabled)
function gml_thread_exec(this){
	var l__gthis=this;
	var l_previous=gml_thread_current;
	gml_thread_current=this;
	var l_stack;
	var l_scope=this[3];
	var l_actions,l_pos,l_len;
	l_actions=l_scope[1];
	l_len=ds_list_size(l_actions);
	l_stack=l_scope[5];
	var l_allowExceptions=gml_thread_allow_exceptions;
	var l_handler,l__callback;
	this[@1]=gml_thread_status_running;
	while(true){
		var l_proc,l_act;
		while(l_scope[2]<l_len){
			var l_pos=l_scope[2];
			l_act=l_actions[|l_pos];
			l_scope[@2]=l_pos+1;
			if(l_allowExceptions){
				l_handler=vm_v2_gml_thread_v2_handlers[l_act[0]];
				var l_ar=l_handler(l__gthis,l_act);
				if(l_ar==gml_thread_proc_result_error||l__gthis[1]==gml_thread_status_error){
					break;
				} else if(l_ar==gml_thread_proc_result_sync_scope){
					l_scope=l__gthis[3];
					l_actions=l_scope[1];
					l_len=ds_list_size(l_actions);
					l_stack=l_scope[5];
				}
			} else try{
				l_handler=vm_v2_gml_thread_v2_handlers[l_act[0]];
				var l_ar1=l_handler(l__gthis,l_act);
				if(l_ar1==gml_thread_proc_result_error||l__gthis[1]==gml_thread_status_error){
					break;
				} else if(l_ar1==gml_thread_proc_result_sync_scope){
					l_scope=l__gthis[3];
					l_actions=l_scope[1];
					l_len=ds_list_size(l_actions);
					l_stack=l_scope[5];
				}
			}catch(l__g){
				gml_thread_proc_error(this,gml_std_haxe_Exception_caught(l__g)[1],l_act);
				break;
			}
		}
		if(this[1]==gml_thread_status_error){
			l_proc=false;
			while(l_scope!=undefined){
				if(l_scope[8]!=undefined){
					l_scope[@2]=l_scope[8][0];
					this[@1]=gml_thread_status_running;
					break;
				} else {
					l_scope=l_scope[10];
					l_proc=true;
				}
			}
			if(l_scope==undefined){
				this[@0]=undefined;
				l__callback=this[2];
				if(l__callback!=undefined)l__callback(this);
				break;
			} else if(l_proc){
				if(l_scope[7]!=undefined)gml_with_scope_destroy(l_scope[7]);
				l_actions=l_scope[1];
				l_len=ds_list_size(l_actions);
				l_stack=l_scope[5];
			}
		} else if(l_scope[2]>=l_len&&this[1]==gml_thread_status_running){
			if(l_scope[7]!=undefined)gml_with_scope_destroy(l_scope[7]);
			if(l_stack[0]>0)this[@0]=l_stack[l_stack[0]]; else this[@0]=0;
			l_scope=l_scope[10];
			if(l_scope!=undefined){
				this[@3]=l_scope;
				l_actions=l_scope[1];
				l_len=ds_list_size(l_actions);
				l_stack=l_scope[5];
			} else {
				this[@1]=gml_thread_status_done;
				l__callback=this[2];
				if(l__callback!=undefined)l__callback(this);
				break;
			}
		} else break;
	}
	this[@3]=l_scope;
	gml_thread_current=l_previous;
}

if(live_enabled)
function gml_thread_fork(this){
	var l_q=this[3];
	var l_q_inst=l_q[6];
	var l_r=gml_thread_create(l_q[9],l_q[1],gml_value_list_copy(l_q[3]),gml_value_list_copy(l_q[4]),l_q_inst[l_q_inst[0]],l_q_inst[l_q_inst[0]-1],l_q[2]);
	l_r[@2]=this[2];
	var l_n=l_r[3];
	l_n[@6]=gml_std_gml_internal_ArrayImpl_copy(l_q_inst);
	l_n[@5]=gml_std_gml_internal_ArrayImpl_copy(l_q[5]);
	l_n[@7]=gml_with_scope_copy(l_q[7]);
	return l_r;
}

if(live_enabled)
function vm_gml_thread_exec_slice_error(){
	gml_thread_error("Calls only support up to "+string(81)+" arguments at this time");
	return undefined;
}

if(live_enabled)
function vm_gml_thread_exec_slice_init(){
	return [vm_gml_thread_exec_slice_with0,vm_gml_thread_exec_slice_with1,vm_gml_thread_exec_slice_with2,vm_gml_thread_exec_slice_with3,vm_gml_thread_exec_slice_with4,vm_gml_thread_exec_slice_with5,vm_gml_thread_exec_slice_with6,vm_gml_thread_exec_slice_with7,vm_gml_thread_exec_slice_with8,vm_gml_thread_exec_slice_with9,vm_gml_thread_exec_slice_with10,vm_gml_thread_exec_slice_with11,vm_gml_thread_exec_slice_with12,vm_gml_thread_exec_slice_with13,vm_gml_thread_exec_slice_with14,vm_gml_thread_exec_slice_with15,vm_gml_thread_exec_slice_with16,vm_gml_thread_exec_slice_with17,vm_gml_thread_exec_slice_with18,vm_gml_thread_exec_slice_with19,vm_gml_thread_exec_slice_with20,vm_gml_thread_exec_slice_with21,vm_gml_thread_exec_slice_with22,vm_gml_thread_exec_slice_with23,vm_gml_thread_exec_slice_with24,vm_gml_thread_exec_slice_with25,vm_gml_thread_exec_slice_with26,vm_gml_thread_exec_slice_with27,vm_gml_thread_exec_slice_with28,vm_gml_thread_exec_slice_with29,vm_gml_thread_exec_slice_with30,vm_gml_thread_exec_slice_with31,vm_gml_thread_exec_slice_with32,vm_gml_thread_exec_slice_with33,vm_gml_thread_exec_slice_with34,vm_gml_thread_exec_slice_with35,vm_gml_thread_exec_slice_with36,vm_gml_thread_exec_slice_with37,vm_gml_thread_exec_slice_with38,vm_gml_thread_exec_slice_with39,vm_gml_thread_exec_slice_with40,vm_gml_thread_exec_slice_with41,vm_gml_thread_exec_slice_with42,vm_gml_thread_exec_slice_with43,vm_gml_thread_exec_slice_with44,vm_gml_thread_exec_slice_with45,vm_gml_thread_exec_slice_with46,vm_gml_thread_exec_slice_with47,vm_gml_thread_exec_slice_with48,vm_gml_thread_exec_slice_with49,vm_gml_thread_exec_slice_with50,vm_gml_thread_exec_slice_with51,vm_gml_thread_exec_slice_with52,vm_gml_thread_exec_slice_with53,vm_gml_thread_exec_slice_with54,vm_gml_thread_exec_slice_with55,vm_gml_thread_exec_slice_with56,vm_gml_thread_exec_slice_with57,vm_gml_thread_exec_slice_with58,vm_gml_thread_exec_slice_with59,vm_gml_thread_exec_slice_with60,vm_gml_thread_exec_slice_with61,vm_gml_thread_exec_slice_with62,vm_gml_thread_exec_slice_with63,vm_gml_thread_exec_slice_with64,vm_gml_thread_exec_slice_with65,vm_gml_thread_exec_slice_with66,vm_gml_thread_exec_slice_with67,vm_gml_thread_exec_slice_with68,vm_gml_thread_exec_slice_with69,vm_gml_thread_exec_slice_with70,vm_gml_thread_exec_slice_with71,vm_gml_thread_exec_slice_with72,vm_gml_thread_exec_slice_with73,vm_gml_thread_exec_slice_with74,vm_gml_thread_exec_slice_with75,vm_gml_thread_exec_slice_with76,vm_gml_thread_exec_slice_with77,vm_gml_thread_exec_slice_with78,vm_gml_thread_exec_slice_with79,vm_gml_thread_exec_slice_with80];
}

if(live_enabled)
function vm_gml_thread_exec_slice_with0(l_f,l_w,l_i){
	return l_f();
}

if(live_enabled)
function vm_gml_thread_exec_slice_with1(l_f,l_w,l_i){
	return l_f(l_w[l_i]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with2(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with3(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with4(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with5(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with6(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with7(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with8(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with9(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with10(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with11(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with12(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with13(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with14(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with15(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with16(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with17(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with18(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with19(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with20(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with21(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with22(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with23(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with24(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with25(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with26(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with27(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with28(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with29(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with30(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with31(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with32(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with33(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with34(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with35(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with36(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with37(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with38(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with39(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with40(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with41(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with42(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with43(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with44(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with45(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with46(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with47(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with48(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with49(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with50(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with51(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with52(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with53(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with54(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with55(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with56(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with57(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with58(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with59(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with60(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with61(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with62(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with63(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with64(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with65(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with66(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with67(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with68(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with69(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with70(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with71(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with72(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with73(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with74(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with75(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with76(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with77(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75],l_w[l_i+76]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with78(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75],l_w[l_i+76],l_w[l_i+77]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with79(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75],l_w[l_i+76],l_w[l_i+77],l_w[l_i+78]);
}

if(live_enabled)
function vm_gml_thread_exec_slice_with80(l_f,l_w,l_i){
	return l_f(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75],l_w[l_i+76],l_w[l_i+77],l_w[l_i+78],l_w[l_i+79]);
}

if(live_enabled)
function gml_type_check_init(){
	var l_r=haxe_ds_string_map_create();
	haxe_ds_basic_map_set(l_r,"any",gml_type_check_any);
	haxe_ds_basic_map_set(l_r,"bool",gml_type_check_number);
	haxe_ds_basic_map_set(l_r,"number",gml_type_check_number);
	haxe_ds_basic_map_set(l_r,"?number",gml_type_check_z_number);
	haxe_ds_basic_map_set(l_r,"float",gml_type_check_number);
	haxe_ds_basic_map_set(l_r,"?float",gml_type_check_z_number);
	haxe_ds_basic_map_set(l_r,"real",gml_type_check_number);
	haxe_ds_basic_map_set(l_r,"?real",gml_type_check_z_number);
	haxe_ds_basic_map_set(l_r,"color",gml_type_check_number);
	haxe_ds_basic_map_set(l_r,"date",gml_type_check_number);
	haxe_ds_basic_map_set(l_r,"int",gml_type_check_int);
	haxe_ds_basic_map_set(l_r,"index",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"id",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"sprite",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"background",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"sound",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"font",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"script",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"shader",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"timeline",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"object",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"room",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"buffer",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"list",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"grid",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"string",gml_type_check_string);
	haxe_ds_basic_map_set(l_r,"?string",gml_type_check_z_string);
	haxe_ds_basic_map_set(l_r,"array",gml_type_check_array);
	haxe_ds_basic_map_set(l_r,"?array",gml_type_check_z_array);
	haxe_ds_basic_map_set(l_r,"sprite",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"background",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"sound",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"font",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"path",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"timeline",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"script",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"object",gml_type_check_index);
	haxe_ds_basic_map_set(l_r,"room",gml_type_check_index);
	return l_r;
}

if(live_enabled)
function gml_type_check_any(l_v){
	return "";
}

if(live_enabled)
function gml_type_check_number(l_v){
	if(is_numeric(l_v))return "";
	return "Expected a number";
}

if(live_enabled)
function gml_type_check_int(l_v){
	if(is_real(l_v)&&l_v%1==0)return "";
	if(is_numeric(l_v))return "";
	if(is_string(l_v))return "";
	return "Expected an integer";
}

if(live_enabled)
function gml_type_check_index(l_v){
	if(is_real(l_v)&&l_v%1==0)return "";
	if(is_numeric(l_v))return "";
	if(is_string(l_v))return "";
	return "Expected an index";
}

if(live_enabled)
function gml_type_check_string(l_v){
	if(is_string(l_v))return "";
	if(is_numeric(l_v))return "";
	return "Expected a string";
}

if(live_enabled)
function gml_type_check_array(l_v){
	if(is_array(l_v))return "";
	return "Expected an array";
}

if(live_enabled)
function gml_type_check_z_number(l_v){
	if(l_v==undefined||is_numeric(l_v))return "";
	if(is_string(l_v))return "";
	return "Expected a number or null";
}

if(live_enabled)
function gml_type_check_z_string(l_v){
	if(l_v==undefined||is_string(l_v))return "";
	if(is_numeric(l_v))return "";
	return "Expected a string or null";
}

if(live_enabled)
function gml_type_check_z_array(l_v){
	if(l_v==undefined||is_array(l_v))return "";
	return "Expected an array or null";
}

if(live_enabled)
function gml_value_get_type(l_this1){
	if(l_this1==undefined){
		return "undefined";
	} else if(is_numeric(l_this1)){
		return "number";
	} else if(is_string(l_this1)){
		return "string";
	} else if(is_struct(l_this1)){
		return "struct";
	} else if(is_array(l_this1)){
		return "array";
	} else return typeof(l_this1);
}

if(live_enabled)
function gml_value_print_rec(l_v,l_z){
	var l_r,l_i,l_n;
	var l_id=gml_value_print_num++;
	if(l_v==undefined){
		return "undefined";
	} else if(is_numeric(l_v)){
		l_r=string_format(l_v,0,15);
		l_n=string_pos(".",l_r);
		if(l_n>0){
			for(l_i=string_byte_length(l_r);l_i>l_n;l_i--){
				if(string_byte_at(l_r,l_i)!=48)return string_copy(l_r,1,l_i);
			}
			return string_copy(l_r,1,l_n-1);
		} else return l_r;
	} else if(is_string(l_v)){
		return "\""+l_v+"\"";
	} else if(is_array(l_v)){
		l_r=gml_value_print_refs[?l_v];
		if(l_r!=undefined)return l_r;
		gml_value_print_refs[?l_v]="@"+string(l_id);
		l_n=array_length(l_v);
		if(l_n>0){
			if(++l_z<=8){
				l_r="["+gml_value_print_rec(l_v[0],l_z);
				for(l_i=1;l_i<l_n;l_i++){
					l_r+=", "+gml_value_print_rec(l_v[l_i],l_z);
				}
				return l_r+"]";
			} else return "[...]";
		} else return "[]";
	} else if(instanceof(l_v)=="instance"){
		var l_q=l_v;
		return "instance#"+string(l_q.id)+"("+object_get_name(l_q.object_index)+")";
	} else return gml_std_Std_stringify(l_v);
}

if(live_enabled)
function gml_value_print(l_this1){
	ds_map_clear(gml_value_print_refs);
	gml_value_print_num=0;
	var l_r=gml_value_print_rec(l_this1,0);
	ds_map_clear(gml_value_print_refs);
	return l_r;
}

if(live_enabled)
function gml_value_dump(l_this1){
	return "`"+gml_value_print(l_this1)+"` ("+gml_value_get_type(l_this1)+")";
}

if(live_enabled)
function gml_value_list_copy(l_this1){
	var l_n=array_length(l_this1);
	var l_r=array_create(l_n);
	array_copy(l_r,0,l_this1,0,l_n);
	return l_r;
}

if(live_enabled)
function gml_with_scope_create(l_data,l_nxt){
	var this=[mt_gml_with_scope];
	array_copy(this,1,mq_gml_with_scope,1,5);
	this[@1]=0;
	this[@5]=l_data;
	this[@2]=l_data[0];
	this[@3]=l_data[1];
	this[@4]=l_nxt;
	return this;
}

if(live_enabled)
function gml_with_scope_copy(l_q){
	if(l_q==undefined)return undefined;
	var l_q_data=l_q[5];
	l_q_data[2]++;
	var l_r=gml_with_scope_create(l_q_data,gml_with_scope_copy(l_q[4]));
	l_r[@1]=l_q[1];
	return l_r;
}

if(live_enabled)
function gml_with_scope_destroy(l_q){
	while(l_q!=undefined){
		vm__gml_with_data_gml_with_data_impl__destroy(l_q[5]);
		l_q=l_q[4];
	}
}

if(live_enabled)
function vm__gml_with_data_gml_with_data_impl__init(){
	var l_pools=array_create(5,undefined);
	l_pools[@0]=ds_stack_create();
	l_pools[@1]=ds_stack_create();
	l_pools[@2]=ds_stack_create();
	l_pools[@3]=ds_stack_create();
	l_pools[@4]=ds_stack_create();
	return l_pools;
}

if(live_enabled)
function vm__gml_with_data_gml_with_data_impl__alloc(l_size){
	var l_sln=(l_size>0?(log10(l_size)|0):0);
	if(l_sln>=5)return array_create(l_size);
	var l_pool=vm__gml_with_data_gml_with_data_impl__pools[l_sln];
	if(ds_stack_empty(l_pool))return array_create((power(10,l_sln)|0)); else return ds_stack_pop(l_pool);
}

if(live_enabled)
function vm__gml_with_data_gml_with_data_impl__destroy(l_this1){
	if(--l_this1[2]!=0)return 0;
	var l_size=l_this1[0];
	var l_sln=(l_size>0?(log10(l_size)|0):0);
	if(l_sln>=5)return 0;
	ds_stack_push(vm__gml_with_data_gml_with_data_impl__pools[l_sln],l_this1[1]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_error(){
	gml_thread_error("Calls only support up to "+string(81)+" arguments at this time");
	return undefined;
}

if(live_enabled)
function vm_impl_gml_thread_construct_init(){
	return [vm_impl_gml_thread_construct_with0,vm_impl_gml_thread_construct_with1,vm_impl_gml_thread_construct_with2,vm_impl_gml_thread_construct_with3,vm_impl_gml_thread_construct_with4,vm_impl_gml_thread_construct_with5,vm_impl_gml_thread_construct_with6,vm_impl_gml_thread_construct_with7,vm_impl_gml_thread_construct_with8,vm_impl_gml_thread_construct_with9,vm_impl_gml_thread_construct_with10,vm_impl_gml_thread_construct_with11,vm_impl_gml_thread_construct_with12,vm_impl_gml_thread_construct_with13,vm_impl_gml_thread_construct_with14,vm_impl_gml_thread_construct_with15,vm_impl_gml_thread_construct_with16,vm_impl_gml_thread_construct_with17,vm_impl_gml_thread_construct_with18,vm_impl_gml_thread_construct_with19,vm_impl_gml_thread_construct_with20,vm_impl_gml_thread_construct_with21,vm_impl_gml_thread_construct_with22,vm_impl_gml_thread_construct_with23,vm_impl_gml_thread_construct_with24,vm_impl_gml_thread_construct_with25,vm_impl_gml_thread_construct_with26,vm_impl_gml_thread_construct_with27,vm_impl_gml_thread_construct_with28,vm_impl_gml_thread_construct_with29,vm_impl_gml_thread_construct_with30,vm_impl_gml_thread_construct_with31,vm_impl_gml_thread_construct_with32,vm_impl_gml_thread_construct_with33,vm_impl_gml_thread_construct_with34,vm_impl_gml_thread_construct_with35,vm_impl_gml_thread_construct_with36,vm_impl_gml_thread_construct_with37,vm_impl_gml_thread_construct_with38,vm_impl_gml_thread_construct_with39,vm_impl_gml_thread_construct_with40,vm_impl_gml_thread_construct_with41,vm_impl_gml_thread_construct_with42,vm_impl_gml_thread_construct_with43,vm_impl_gml_thread_construct_with44,vm_impl_gml_thread_construct_with45,vm_impl_gml_thread_construct_with46,vm_impl_gml_thread_construct_with47,vm_impl_gml_thread_construct_with48,vm_impl_gml_thread_construct_with49,vm_impl_gml_thread_construct_with50,vm_impl_gml_thread_construct_with51,vm_impl_gml_thread_construct_with52,vm_impl_gml_thread_construct_with53,vm_impl_gml_thread_construct_with54,vm_impl_gml_thread_construct_with55,vm_impl_gml_thread_construct_with56,vm_impl_gml_thread_construct_with57,vm_impl_gml_thread_construct_with58,vm_impl_gml_thread_construct_with59,vm_impl_gml_thread_construct_with60,vm_impl_gml_thread_construct_with61,vm_impl_gml_thread_construct_with62,vm_impl_gml_thread_construct_with63,vm_impl_gml_thread_construct_with64,vm_impl_gml_thread_construct_with65,vm_impl_gml_thread_construct_with66,vm_impl_gml_thread_construct_with67,vm_impl_gml_thread_construct_with68,vm_impl_gml_thread_construct_with69,vm_impl_gml_thread_construct_with70,vm_impl_gml_thread_construct_with71,vm_impl_gml_thread_construct_with72,vm_impl_gml_thread_construct_with73,vm_impl_gml_thread_construct_with74,vm_impl_gml_thread_construct_with75,vm_impl_gml_thread_construct_with76,vm_impl_gml_thread_construct_with77,vm_impl_gml_thread_construct_with78,vm_impl_gml_thread_construct_with79,vm_impl_gml_thread_construct_with80];
}

if(live_enabled)
function vm_impl_gml_thread_construct_with0(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c();
}

if(live_enabled)
function vm_impl_gml_thread_construct_with1(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with2(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with3(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with4(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with5(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with6(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with7(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with8(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with9(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with10(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with11(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with12(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with13(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with14(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with15(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with16(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with17(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with18(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with19(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with20(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with21(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with22(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with23(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with24(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with25(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with26(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with27(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with28(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with29(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with30(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with31(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with32(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with33(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with34(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with35(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with36(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with37(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with38(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with39(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with40(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with41(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with42(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with43(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with44(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with45(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with46(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with47(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with48(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with49(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with50(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with51(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with52(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with53(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with54(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with55(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with56(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with57(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with58(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with59(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with60(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with61(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with62(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with63(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with64(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with65(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with66(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with67(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with68(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with69(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with70(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with71(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with72(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with73(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with74(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with75(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with76(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with77(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75],l_w[l_i+76]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with78(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75],l_w[l_i+76],l_w[l_i+77]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with79(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75],l_w[l_i+76],l_w[l_i+77],l_w[l_i+78]);
}

if(live_enabled)
function vm_impl_gml_thread_construct_with80(l_f,l_w,l_i){
	var l_c=l_f;
	return new l_c(l_w[l_i],l_w[l_i+1],l_w[l_i+2],l_w[l_i+3],l_w[l_i+4],l_w[l_i+5],l_w[l_i+6],l_w[l_i+7],l_w[l_i+8],l_w[l_i+9],l_w[l_i+10],l_w[l_i+11],l_w[l_i+12],l_w[l_i+13],l_w[l_i+14],l_w[l_i+15],l_w[l_i+16],l_w[l_i+17],l_w[l_i+18],l_w[l_i+19],l_w[l_i+20],l_w[l_i+21],l_w[l_i+22],l_w[l_i+23],l_w[l_i+24],l_w[l_i+25],l_w[l_i+26],l_w[l_i+27],l_w[l_i+28],l_w[l_i+29],l_w[l_i+30],l_w[l_i+31],l_w[l_i+32],l_w[l_i+33],l_w[l_i+34],l_w[l_i+35],l_w[l_i+36],l_w[l_i+37],l_w[l_i+38],l_w[l_i+39],l_w[l_i+40],l_w[l_i+41],l_w[l_i+42],l_w[l_i+43],l_w[l_i+44],l_w[l_i+45],l_w[l_i+46],l_w[l_i+47],l_w[l_i+48],l_w[l_i+49],l_w[l_i+50],l_w[l_i+51],l_w[l_i+52],l_w[l_i+53],l_w[l_i+54],l_w[l_i+55],l_w[l_i+56],l_w[l_i+57],l_w[l_i+58],l_w[l_i+59],l_w[l_i+60],l_w[l_i+61],l_w[l_i+62],l_w[l_i+63],l_w[l_i+64],l_w[l_i+65],l_w[l_i+66],l_w[l_i+67],l_w[l_i+68],l_w[l_i+69],l_w[l_i+70],l_w[l_i+71],l_w[l_i+72],l_w[l_i+73],l_w[l_i+74],l_w[l_i+75],l_w[l_i+76],l_w[l_i+77],l_w[l_i+78],l_w[l_i+79]);
}

if(live_enabled)
function vm_group_alarm_on_alarm(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-1;
	l_st[@0]=l_z;
	l_st[@l_z]=l_st[l_z].alarm[l_st[l_z+1]];
	l_st[@l_z+1]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_alarm_on_alarm_set(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-2;
	l_st[@0]=(l_z-1);
	l_st[l_z].alarm[l_st[l_z+1]] = l_st[l_z+2];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	l_st[@l_z+2]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_alarm_on_alarm_aop(l_th,l_act){
	var l_o=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-2;
	l_st[@0]=(l_z-1);
	var l_a=l_st[l_z];
	var l_i=l_st[l_z+1];
	var l_v;
	try{
		l_v=l_a.alarm[l_i]
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	try{
		var l_fn=vm_group_op_funcs[l_o];
		l_v=l_fn(l_v,l_st[l_z+2]);
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	l_a.alarm[l_i] = (l_v|0);
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	l_st[@l_z+2]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_arg_on_arg_count(l_th,l_act){
	var l_q=l_th[3];
	gml_stack_push(l_q[5],array_length(l_q[3]));
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_arg_on_arg_const(l_th,l_act){
	var l_i=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_args1=l_q[3];
	if(l_i>=0&&l_i<array_length(l_args1)){
		var l_i1=l_st[0]+1;
		if(l_i1>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
		l_st[@l_i1]=l_args1[l_i];
		l_st[@0]=l_i1;
	} else return gml_thread_proc_error2(l_th,"Argument index "+string(l_i)+" is out of range (0.."+string(array_length(l_args1))+")",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_arg_on_arg_const_set(l_th,l_act){
	var l_i=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_args1=l_q[3];
	if(l_i>=0&&l_i<array_length(l_args1)){
		var l_i1=l_st[0];
		var l_r=l_st[l_i1];
		l_st[@l_i1]=0;
		l_st[@0]=l_i1-1;
		l_args1[@l_i]=l_r;
	} else return gml_thread_proc_error2(l_th,"Argument index "+string(l_i)+" is out of range (0.."+string(array_length(l_args1))+")",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_arg_on_arg_const_aop(l_th,l_act){
	var l_i=l_act[3];
	var l_o=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_args1=l_q[3];
	if(l_i>=0&&l_i<array_length(l_args1)){
		var l_arg=l_args1[l_i];
		var l_i1=l_st[0];
		var l_val=l_st[l_i1];
		l_st[@l_i1]=0;
		l_st[@0]=l_i1-1;
		try{
			var l_fn=vm_group_op_funcs[l_o];
			l_val=l_fn(l_arg,l_val);
		}catch(l__g){
			return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
		}
		l_args1[@l_i]=l_val;
	} else return gml_thread_proc_error2(l_th,"Argument index "+string(l_i)+" is out of range (0.."+string(array_length(l_args1))+")",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_arg_on_arg_index(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0];
	var l_k=l_st[l_z];
	if(is_numeric(l_k)){
		var l_i=(l_k|0);
		var l_args1=l_q[3];
		if(l_i>=0&&l_i<array_length(l_args1))l_st[@l_z]=l_args1[l_i]; else return gml_thread_proc_error2(l_th,"Argument index "+string(l_i)+" is out of range (0.."+string(array_length(l_args1))+")",l_act);
	} else return gml_thread_proc_error2(l_th,"Index is not a number",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_arg_on_arg_index_set(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_v,l_k;
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	l_k=l_st[l_z];
	l_v=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	if(is_numeric(l_k)){
		var l_i=(l_k|0);
		var l_args1=l_q[3];
		if(l_i>=0&&l_i<array_length(l_args1))l_args1[@l_i]=l_v; else return gml_thread_proc_error2(l_th,"Argument index "+string(l_i)+" is out of range (0.."+string(array_length(l_args1))+")",l_act);
	} else return gml_thread_proc_error2(l_th,"Index is not a number",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_arg_on_arg_index_aop(l_th,l_act){
	var l_o=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_v,l_k;
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	l_k=l_st[l_z];
	l_v=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	if(is_numeric(l_k)){
		var l_i=(l_k|0);
		var l_args1=l_q[3];
		if(l_i>=0&&l_i<array_length(l_args1)){
			try{
				var l_fn=vm_group_op_funcs[l_o];
				l_v=l_fn(l_args1[l_i],l_v);
			}catch(l__g){
				return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
			}
			l_args1[@l_i]=l_v;
		} else return gml_thread_proc_error2(l_th,"Argument index "+string(l_i)+" is out of range (0.."+string(array_length(l_args1))+")",l_act);
	} else return gml_thread_proc_error2(l_th,"Index is not a number",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_array_on_index(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-1;
	l_st[@0]=l_z;
	var l_a=l_st[l_z];
	l_st[@l_z]=l_a[l_st[l_z+1]];
	l_st[@l_z+1]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_array_on_index_set(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-2;
	l_st[@0]=(l_z-1);
	l_st[l_z][@l_st[l_z+1]]=l_st[l_z+2];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	l_st[@l_z+2]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_array_on_index_aop(l_th,l_act){
	var l_o=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-2;
	l_st[@0]=(l_z-1);
	var l_a=l_st[l_z];
	var l_i=l_st[l_z+1];
	var l_v;
	try{
		l_v=l_a[l_i]
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	try{
		var l_fn=vm_group_op_funcs[l_o];
		l_v=l_fn(l_v,l_st[l_z+2]);
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	l_a[@l_i]=l_v;
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	l_st[@l_z+2]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_array_on_index2d(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_a;
	var l_z=l_st[0]-2;
	l_st[@0]=l_z;
	l_a=l_st[l_z];
	l_st[@l_z]=l_a[l_st[l_z+1], l_st[l_z+2]];
	l_st[@l_z+1]=0;
	l_st[@l_z+2]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_array_on_index2d_set(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-3;
	l_st[@0]=(l_z-1);
	array_set_2D(l_st[l_z],l_st[l_z+1],l_st[l_z+2],l_st[l_z+3]);
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	l_st[@l_z+2]=0;
	l_st[@l_z+3]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_array_on_index2d_aop(l_th,l_act){
	var l_o=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-3;
	l_st[@0]=(l_z-1);
	var l_a=l_st[l_z];
	var l_i=l_st[l_z+1];
	var l_k=l_st[l_z+2];
	var l_v;
	try{
		l_v=l_a[l_i, l_k]
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	try{
		var l_fn=vm_group_op_funcs[l_o];
		l_v=l_fn(l_v,l_st[l_z+3]);
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	l_a[@l_i,l_k]=l_v;
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	l_st[@l_z+2]=0;
	l_st[@l_z+3]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_call_check_func_args(l_th,l_act,l_argChecks,l_restCheck,l_array1,l_arrOffset,l_argc){
	var l_argChecks_len=array_length(l_argChecks);
	var l_i=0;
	for(var l__g1=l_argc;l_i<l__g1;l_i++){
		var l_err,l_ac;
		if(l_i<l_argChecks_len){
			l_ac=l_argChecks[l_i];
			l_err=l_ac(l_array1[l_arrOffset+l_i]);
		} else l_err=l_restCheck(l_array1[l_arrOffset+l_i]);
		if(l_err!="")return gml_thread_proc_error(l_th,l_err,l_act);
	}
	return true;
}

if(live_enabled)
function vm_group_call_call_func(l_th,l_act,l_func,l_instFlags,l_array1,l_arrOffset,l_argc){
	var l_q=l_th[3];
	var l_inst=l_q[6];
	var l_v1=undefined;
	var l_notFound;
	var l_status=gml_thread_proc_result_ok;
	var l_qn0,l_qn1;
	switch(l_instFlags){
		case 3:
			l_qn0=l_inst[l_inst[0]];
			l_qn1=l_inst[l_inst[0]-1];
			l_notFound=true;
			with (l_qn1) {
				with (l_qn0) {
					var l_sf;
					if(l_argc<81){
						l_sf=vm_gml_thread_exec_slice_funcs[l_argc];
						l_v1=l_sf(l_func,l_array1,l_arrOffset);
					} else l_v1=vm_gml_thread_exec_slice_error();
					l_notFound=false;
					break;
				}
				break;
			}
			if(l_notFound)return gml_thread_proc_error(l_th,"Can't call instance-specific function - instance `"+gml_value_print(l_inst[l_inst[0]])+("` ("+gml_value_get_type(l_inst[l_inst[0]])+") does not exist."),l_act);
			break;
		case 2:
			l_qn0=l_inst[l_inst[0]];
			l_qn1=l_inst[l_inst[0]-1];
			l_notFound=true;
			with (l_qn1) {
				with (l_qn0) {
					var l_sf;
					if(l_argc<81){
						l_sf=vm_gml_thread_exec_slice_funcs[l_argc];
						l_v1=l_sf(l_func,l_array1,l_arrOffset);
					} else l_v1=vm_gml_thread_exec_slice_error();
					l_notFound=false;
					break;
				}
				break;
			}
			if(l_notFound)return gml_thread_proc_error(l_th,"Can't call instance-specific function - instance `"+gml_value_print(l_inst[l_inst[0]])+("` ("+gml_value_get_type(l_inst[l_inst[0]])+") does not exist."),l_act);
			break;
		case 1:
			l_qn0=l_inst[l_inst[0]];
			l_notFound=true;
			with (l_qn0) {
				var l_sf;
				if(l_argc<81){
					l_sf=vm_gml_thread_exec_slice_funcs[l_argc];
					l_v1=l_sf(l_func,l_array1,l_arrOffset);
				} else l_v1=vm_gml_thread_exec_slice_error();
				l_notFound=false;
				break;
			}
			if(l_notFound)return gml_thread_proc_error(l_th,"Can't call instance-specific function - instance `"+gml_value_print(l_inst[l_inst[0]])+("` ("+gml_value_get_type(l_inst[l_inst[0]])+") does not exist."),l_act);
			break;
		case -5:
			l_th[@0]=undefined;
			l_status=l_func(l_array1,l_arrOffset,l_argc);
			break;
		case -6:
			l_notFound=true;
			with (l_inst[l_inst[0]]) {
				if(l_argc<81){
					var l_cf=vm_impl_gml_thread_construct_funcs[l_argc];
					l_v1=l_cf(l_func,l_array1,l_arrOffset);
				} else l_v1=vm_impl_gml_thread_construct_error();
				l_notFound=false;
			}
			if(l_notFound){
				if(l_argc<81){
					var l_cf=vm_impl_gml_thread_construct_funcs[l_argc];
					l_v1=l_cf(l_func,l_array1,l_arrOffset);
				} else l_v1=vm_impl_gml_thread_construct_error();
			}
			break;
		default:
			var l_sf;
			if(l_argc<81){
				l_sf=vm_gml_thread_exec_slice_funcs[l_argc];
				l_v1=l_sf(l_func,l_array1,l_arrOffset);
			} else l_v1=vm_gml_thread_exec_slice_error();
	}
	if(l_th[1]!=gml_thread_status_error){
		vm_group_call_call_func_result=l_v1;
		vm_group_call_call_func_status=l_status;
		return true;
	} else return false;
}

if(live_enabled)
function vm_group_call_call_value(l_th,l_act,l_v1,l_argArray,l_argOffset,l_n){
	if(is_method(l_v1)){
		if(vm_group_call_call_func(l_th,l_act,l_v1,3,l_argArray,l_argOffset,l_n)){
			l_th[@0]=vm_group_call_call_func_result;
			return vm_group_call_call_func_status;
		} else return gml_thread_proc_result_error;
	} else if(is_numeric(l_v1)){
		if(script_exists(l_v1)){
			if(vm_group_call_call_func(l_th,l_act,l_v1,3,l_argArray,l_argOffset,l_n)){
				l_th[@0]=vm_group_call_call_func_result;
				return vm_group_call_call_func_status;
			} else return gml_thread_proc_result_error;
		} else return gml_thread_proc_error2(l_th,"Trying to call invalid script index "+gml_value_print(l_v1),l_act);
	} else return gml_thread_proc_error2(l_th,"Script index must be a number, got "+gml_value_dump(l_v1),l_act);
}

if(live_enabled)
function vm_group_call_on_call_script(l_th,l_act){
	var l_n=l_act[3];
	var l_scr=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_args1=[];
	var l_k=l_st[0]-l_n;
	array_copy(l_args1,0,l_st,l_k+1,l_n);
	array_copy(l_st,l_k+1,gml_stack_fill_value_arr,0,l_n);
	l_st[@0]=l_k;
	if(array_length(l_args1)<l_scr[8])array_resize(l_args1,l_scr[8]);
	var l_inst=l_q[6];
	var l_nq=gml_thread_scope_create(l_scr[10],0,l_args1,array_create(l_scr[7]),l_inst[l_inst[0]],l_inst[l_inst[0]-1],l_q);
	l_nq[@9]=l_q[9];
	l_th[@3]=l_nq;
	return gml_thread_proc_result_sync_scope;
}

if(live_enabled)
function vm_group_call_on_call_script_id(l_th,l_act){
	var l_n=l_act[2];
	var l_q=l_th[3];
	var l_stack=l_q[5];
	var l_r=vm_group_call_call_value(l_th,l_act,l_stack[l_stack[0]-l_n],l_stack,(l_stack[0]-l_n+1),l_n);
	gml_stack_discard_multi(l_stack,l_n+1);
	return l_r;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_call_on_call_field(l_th,l_act){
	var l_n=l_act[3];
	var l_s=l_act[2];
	var l_q=l_th[3];
	var l_stack=l_q[5];
	var l_ctx=l_stack[l_stack[0]-l_n];
	var l_argOffset=l_stack[0]-l_n+1;
	var l_val;
	var l_notFound=true;
	if(is_numeric(l_ctx)&&l_ctx>=100000){
		l_val=variable_instance_get(l_ctx,l_s);
		if(l_val!=undefined||variable_instance_exists(l_ctx,l_s)){
			l_notFound=false;
		} else if(variable_instance_exists(l_ctx,"id")){
			return gml_thread_proc_error2(l_th,"`"+gml_std_Std_stringify(l_ctx)+"` ("+object_get_name(l_ctx.object_index)+") does not have a variable `"+l_s+"`",l_act);
		}
	} else with (l_ctx) {
		l_val=variable_instance_get(self,l_s);
		if(l_val!=undefined||variable_instance_exists(self,l_s)){
			l_notFound=false;
			break;
		} else return gml_thread_proc_error2(l_th,"`"+gml_std_Std_stringify(self)+"` ("+object_get_name(self.object_index)+") does not have a variable `"+l_s+"`",l_act);
	}
	if(l_notFound){
		if(is_numeric(l_ctx)&&object_exists(l_ctx))return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+" ("+object_get_name(l_ctx)+")",l_act); else return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+".",l_act);
	}
	if(is_method(l_val)){
		if(method_get_self(l_val)==undefined)l_val=method(l_ctx,l_val);
	}
	var l_r=vm_group_call_call_value(l_th,l_act,l_val,l_stack,l_argOffset,l_n);
	gml_stack_discard_multi(l_stack,l_n+1);
	return l_r;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_call_on_construct(l_th,l_act){
	var l__argc=l_act[2];
	var l_q=l_th[3];
	var l_args1=gml_stack_pop_multi(l_q[5],l__argc+1);
	var l_v1=l_args1[0];
	if(is_numeric(l_v1)){
		if(!script_exists((l_v1|0)))return gml_thread_proc_error2(l_th,gml_value_print(l_v1)+" is not a valid script index.",l_act);
	} else if(!is_method(l_v1)){
		return gml_thread_proc_error2(l_th,gml_value_print(l_v1)+" ("+gml_value_get_type(l_v1)+") is not a callable type.",l_act);
	}
	if(vm_group_call_call_func(l_th,l_act,l_v1,-6,l_args1,1,l__argc)){
		l_th[@0]=vm_group_call_call_func_result;
		return vm_group_call_call_func_status;
	} else return gml_thread_proc_result_error;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_call_on_call_script_with_array(l_th,l_act){
	var l_q=l_th[3];
	var l_stack=l_q[5];
	var l_v1,l_arr;
	var l_z=l_stack[0]-1;
	l_stack[@0]=(l_z-1);
	l_v1=l_stack[l_z];
	l_arr=l_stack[l_z+1];
	l_stack[@l_z]=0;
	l_stack[@l_z+1]=0;
	if(is_array(l_arr))return vm_group_call_call_value(l_th,l_act,l_v1,l_arr,0,array_length(l_arr)); else return gml_thread_proc_error2(l_th,"Expected an array with arguments, got "+gml_value_dump(l_arr),l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_call_on_call_func(l_th,l_act){
	var l__out=l_act[7];
	var l__inst=l_act[6];
	var l__restCheck=l_act[5];
	var l__argChecks=l_act[4];
	var l__argc=l_act[3];
	var l__func=l_act[2];
	var l_q=l_th[3];
	var l_stack=l_q[5];
	var l_k=l_stack[0]-l__argc;
	l_stack[@0]=l_k;
	l_k++;
	if(vm_group_call_check_func_args(l_th,l_act,l__argChecks,l__restCheck,l_stack,l_k,l__argc)&&vm_group_call_call_func(l_th,l_act,l__func,l__inst,l_stack,l_k,l__argc)){
		if(l__out){
			var l_i=l_stack[0]+1;
			if(l_i>=array_length(l_stack))l_stack[@array_length(l_stack)*2]=0;
			l_stack[@l_i]=vm_group_call_call_func_result;
			l_stack[@0]=l_i;
		}
		return vm_group_call_call_func_status;
	} else return gml_thread_proc_result_error;
	return gml_thread_proc_result_ok;
}

function live_method(l_newSelf,l_func){
	if(live_enabled){
		if(is_method(l_func)){
			var l_meta=method_get_self(l_func);
			if(variable_struct_exists(l_meta,"live:self")){
				var l_nmeta=haxe__dynamic_access_dynamic_access_impl__copy(l_meta);
				variable_struct_set(l_nmeta,"live:self",l_newSelf);
				return method(l_nmeta,l_func);
			}
		}
		return method(l_newSelf,l_func);
	}else return undefined;
}

if(live_enabled)
function vm_group_call_on_func_literal_lf(){
	if(false)throw argument[argument_count-1];
	var l_meta=self;
	var l_ctx=variable_struct_get(l_meta,"live:context");
	if(l_ctx==undefined)throw gml_std_haxe_Exception_thrown("It would appear that you've re-bound a GMLive function to a different scope. Please use live_method() rather than method() to do so.");
	var l_argc=argument_count;
	var l_args1=array_create(l_argc);
	var l_i=0;
	for(var l__g1=l_argc;l_i<l__g1;l_i++){
		l_args1[@l_i]=argument[l_i];
	}
	var l_livedata=haxe_ds_basic_map_get(live_live_map,l_ctx);
	if(l_livedata==undefined)throw gml_std_haxe_Exception_thrown("Trying to call a nonexistent GMLive program: "+l_ctx);
	var l_pg=l_livedata[0];
	if(l_pg==undefined){
		live_log("Trying to call a broken GMLive program "+l_ctx+", returning undefined");
		return undefined;
	}
	live_custom_self=variable_struct_get(l_meta,"live:self");
	live_custom_other=self;
	var l_th=gml_program_call_v(l_pg,variable_struct_get(l_meta,"live:function"),l_args1,false);
	if(l_th==undefined)return undefined;
	if(l_th[1]==gml_thread_status_done){
		return l_th[0];
	} else if(l_th[1]==gml_thread_status_error){
		live_log("Runtime error: "+gml_thread_get_error(l_th));
		return undefined;
	} else return undefined;
}

if(live_enabled)
function vm_group_call_on_func_literal(l_th,l_act){
	var l_q=l_th[3];
	var l_meta={}
	var l_this1=l_q[6];
	variable_struct_set(l_meta,"live:self",l_this1[l_this1[0]]);
	variable_struct_set(l_meta,"live:context",l_th[3][9][15]);
	variable_struct_set(l_meta,"live:function",l_act[2]);
	gml_stack_push(l_q[5],method(l_meta,vm_group_call_on_func_literal_lf));
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_ensure_on_ensure_array_local(l_th,l_act){
	var l_i=l_act[2];
	var l_q=l_th[3];
	var l_locals=l_q[4];
	if(!is_array(l_locals[l_i]))l_locals[@l_i]=array_create(0);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_ensure_on_ensure_array_global(l_th,l_act){
	var l_s=l_act[2];
	if(!is_array(variable_global_get(l_s)))variable_global_set(l_s,[]);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_ensure_on_ensure_array_field(l_th,l_act){
	var l_field=l_act[2];
	var l_th_scope=l_th[3];
	var l_st=l_th_scope[5];
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	var l_o=l_r;
	if(!is_array(variable_instance_get(l_o,l_field)))variable_instance_set(l_o,l_field,[]);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_env_on_env(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_v=l_act[2](false,undefined);
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_env_on_env_set(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	l_act[2](true,l_r);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_env_on_env_aop(l_th,l_act){
	var l_fn=l_act[3];
	var l_op=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_ev;
	try{
		l_ev=l_fn(false,undefined)
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	var l_i=l_st[0];
	var l_sv=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	try{
		var l_fn1=vm_group_op_funcs[l_op];
		l_ev=l_fn1(l_ev,l_sv);
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	l_fn(true,l_ev);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_env_on_env1d(l_th,l_act){
	var l_fn=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0];
	var l_i=l_st[l_z];
	if(is_numeric(l_i))l_st[@l_z]=l_fn(false,undefined,(l_i|0)); else return gml_thread_proc_error2(l_th,"Index "+gml_value_print(l_i)+" is not a number.",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_env_on_env1d_set(l_th,l_act){
	var l_fn=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i,l_v;
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	l_i=l_st[l_z];
	l_v=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	if(is_numeric(l_i))l_fn(true,l_v,(l_i|0)); else return gml_thread_proc_error2(l_th,"Index "+gml_value_print(l_i)+" is not a number.",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_env_on_env1d_aop(l_th,l_act){
	var l_fn=l_act[3];
	var l_o=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i,l_v;
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	l_i=l_st[l_z];
	l_v=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	if(!is_numeric(l_i))return gml_thread_proc_error2(l_th,"Index "+gml_value_print(l_i)+" is not a number.",l_act);
	var l_ev;
	try{
		l_ev=l_fn(false,undefined,(l_i|0))
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	try{
		var l_fn1=vm_group_op_funcs[l_o];
		l_ev=l_fn1(l_ev,l_v);
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	l_fn(true,l_ev,(l_i|0));
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_field_on_field(l_th,l_act){
	var l_s=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0];
	var l_ctx=l_st[l_z];
	var l_val;
	if(is_numeric(l_ctx)&&l_ctx>=100000){
		l_val=variable_instance_get(l_ctx,l_s);
		if(l_val!=undefined||variable_instance_exists(l_ctx,l_s)){
			l_st[@l_z]=l_val;
			return gml_thread_proc_result_ok;
		}
		if(variable_instance_exists(l_ctx,"id"))return gml_thread_proc_error2(l_th,"`"+gml_std_Std_stringify(l_ctx)+"` ("+object_get_name(l_ctx.object_index)+") does not have a variable `"+l_s+"`",l_act);
	} else with (l_ctx) {
		l_val=variable_instance_get(self,l_s);
		if(l_val!=undefined||variable_instance_exists(self,l_s)){
			l_st[@l_z]=l_val;
			return gml_thread_proc_result_ok;
		}
		return gml_thread_proc_error2(l_th,"`"+gml_value_print(self)+"` ("+object_get_name(self.object_index)+") does not have a variable `"+l_s+"`",l_act);
	}
	if(is_numeric(l_ctx)&&object_exists(l_ctx))return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+" ("+object_get_name(l_ctx)+")",l_act); else return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+".",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_field_on_field_set(l_th,l_act){
	var l_s=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_ctx=l_st[l_z];
	var l_val=l_st[l_z+1];
	var l_checkExists;
	if(is_numeric(l_ctx)&&l_ctx>=100000){
		try{
			l_checkExists=l_ctx.id
		}catch(l__g){
			var l_x=gml_std_haxe_Exception_caught(l__g)[1];
			l_st[@l_z]=0;
			l_st[@l_z+1]=0;
			return gml_thread_proc_error2(l_th,l_x,l_act);
		}
		variable_instance_set(l_ctx,l_s,l_val);
		l_st[@l_z]=0;
		l_st[@l_z+1]=0;
		return gml_thread_proc_result_ok;
	} else with (l_ctx) {
		variable_instance_set(self,l_s,l_val);
		l_st[@l_z]=0;
		l_st[@l_z+1]=0;
		return gml_thread_proc_result_ok;
	}
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	if(is_numeric(l_ctx)&&object_exists(l_ctx))return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+" ("+object_get_name(l_ctx)+")",l_act); else return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+".",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_field_on_field_aop(l_th,l_act){
	var l_s=l_act[3];
	var l_o=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_ctx=l_st[l_z];
	var l_val=l_st[l_z+1];
	var l_checkExists,l_cur;
	if(is_numeric(l_ctx)&&l_ctx>=100000){
		try{
			l_checkExists=l_ctx.id
		}catch(l__g){
			var l_x=gml_std_haxe_Exception_caught(l__g)[1];
			l_st[@l_z]=0;
			l_st[@l_z+1]=0;
			return gml_thread_proc_error2(l_th,l_x,l_act);
		}
		l_cur=variable_instance_get(l_ctx,l_s);
		if(l_cur!=undefined||variable_instance_exists(l_ctx,l_s)){
			try{
				var l_fn=vm_group_op_funcs[l_o];
				l_cur=l_fn(l_cur,l_val);
			}catch(l__g){
				var l_x=gml_std_haxe_Exception_caught(l__g)[1];
				l_st[@l_z]=0;
				l_st[@l_z+1]=0;
				return gml_thread_proc_error2(l_th,l_x,l_act);
			}
			variable_instance_set(l_ctx,l_s,l_cur);
			l_st[@l_z]=0;
			l_st[@l_z+1]=0;
			return gml_thread_proc_result_ok;
		} else {
			l_st[@l_z]=0;
			l_st[@l_z+1]=0;
			return gml_thread_proc_error2(l_th,"`"+gml_std_Std_stringify(l_ctx)+"` ("+object_get_name(l_ctx.object_index)+") does not have a variable `"+l_s+"`",l_act);
		}
	} else {
		l_checkExists=false;
		with (l_ctx) {
			l_cur=variable_instance_get(self,l_s);
			if(l_cur!=undefined||variable_instance_exists(l_ctx,l_s)){
				try{
					var l_fn=vm_group_op_funcs[l_o];
					l_cur=l_fn(l_cur,l_val);
				}catch(l__g){
					var l_x=gml_std_haxe_Exception_caught(l__g)[1];
					l_st[@l_z]=0;
					l_st[@l_z+1]=0;
					return gml_thread_proc_error2(l_th,l_x,l_act);
				}
				variable_instance_set(self,l_s,l_cur);
				l_checkExists=true;
			} else if(is_numeric(l_ctx)){
				l_st[@l_z]=0;
				l_st[@l_z+1]=0;
				return gml_thread_proc_error2(l_th,"`"+gml_std_Std_stringify(l_ctx)+"` ("+object_get_name(l_ctx.object_index)+") does not have a variable `"+l_s+"`",l_act);
			} else {
				l_st[@l_z]=0;
				l_st[@l_z+1]=0;
				return gml_thread_proc_error2(l_th,"`"+gml_value_print(l_ctx)+"` ("+typeof(l_ctx)+") does not have a variable `"+l_s+"`",l_act);
			}
		}
		if(l_checkExists){
			l_st[@l_z]=0;
			l_st[@l_z+1]=0;
			return gml_thread_proc_result_ok;
		}
	}
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	if(is_numeric(l_ctx)&&object_exists(l_ctx))return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+" ("+object_get_name(l_ctx)+")",l_act); else return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+".",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_field_on_in(l_th,l_act){
	var l_not=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-1;
	l_st[@0]=l_z;
	var l_ctx=l_st[l_z+1];
	if(is_numeric(l_ctx)&&l_ctx>=100000){
		l_st[@l_z]=l_not!=variable_instance_exists(l_ctx,l_st[l_z]);
		return gml_thread_proc_result_ok;
	} else with (l_ctx) {
		l_st[@l_z]=l_not!=variable_instance_exists(self,l_st[l_z]);
		return gml_thread_proc_result_ok;
	}
	if(is_numeric(l_ctx)&&object_exists(l_ctx))return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+" ("+object_get_name(l_ctx)+")",l_act); else return gml_thread_proc_error2(l_th,"Couldn't find any instances of "+gml_std_Std_stringify(l_ctx)+".",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_global_on_global(l_th,l_act){
	var l_s=l_act[2];
	var l_q=l_th[3];
	if(variable_global_exists(l_s)){
		var l_st=l_q[5];
		var l_v=variable_global_get(l_s);
		var l_i=l_st[0]+1;
		if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
		l_st[@l_i]=l_v;
		l_st[@0]=l_i;
	} else return gml_thread_proc_error2(l_th,"Global variable `"+l_s+"` is not set.",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_global_on_global_set(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	variable_global_set(l_act[2],l_r);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_global_on_global_aop(l_th,l_act){
	var l_s=l_act[3];
	var l_o=l_act[2];
	var l_q=l_th[3];
	if(variable_global_exists(l_s)){
		var l_st=l_q[5];
		var l_i=l_st[0];
		var l_val=l_st[l_i];
		l_st[@l_i]=0;
		l_st[@0]=l_i-1;
		try{
			var l_a=variable_global_get(l_s);
			var l_fn=vm_group_op_funcs[l_o];
			l_val=l_fn(l_a,l_val);
		}catch(l__g){
			return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
		}
		variable_global_set(l_s,l_val);
	} else return gml_thread_proc_error2(l_th,"Global variable `"+l_s+"` is not set.",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_jump_on_jump(l_th,l_act){
	var l_q=l_th[3];
	l_q[@2]=l_act[2];
	return gml_thread_proc_result_sync_pos;
}

if(live_enabled)
function vm_group_jump_on_jump_if(l_th,l_act){
	var l_p=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	if(l_r){
		l_q[@2]=l_p;
		return gml_thread_proc_result_sync_pos;
	}
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_jump_on_jump_unless(l_th,l_act){
	var l_p=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	if(!l_r){
		l_q[@2]=l_p;
		return gml_thread_proc_result_sync_pos;
	}
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_jump_on_bool_and(l_th,l_act){
	var l_p=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	if(l_st[l_st[0]]){
		var l_i=l_st[0];
		l_st[@l_i]=0;
		l_st[@0]=l_i-1;
	} else {
		l_q[@2]=l_p;
		return gml_thread_proc_result_sync_pos;
	}
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_jump_on_bool_or(l_th,l_act){
	var l_p=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	if(l_st[l_st[0]]){
		l_q[@2]=l_p;
		return gml_thread_proc_result_sync_pos;
	} else {
		var l_i=l_st[0];
		l_st[@l_i]=0;
		l_st[@0]=l_i-1;
	}
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_jump_on_switch(l_th,l_act){
	var l_p=l_act[3];
	var l_jt=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0];
	var l_val=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	if(ds_map_exists(l_jt,l_val))l_q[@2]=l_jt[?l_val]; else l_q[@2]=l_p;
	return gml_thread_proc_result_sync_pos;
}

if(live_enabled)
function vm_group_jump_on_switch_case(l_th,l_act){
	var l_p=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	if(l_st[l_st[0]]==l_r){
		gml_stack_discard(l_st);
		l_q[@2]=l_p;
		return gml_thread_proc_result_sync_pos;
	}
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_jump_on_repeat_pre(l_th,l_act){
	var l_p=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_val=l_st[l_st[0]];
	if(is_numeric(l_val)){
		if(l_val<=0){
			l_q[@2]=l_p;
			var l_i=l_st[0];
			l_st[@l_i]=0;
			l_st[@0]=l_i-1;
			return gml_thread_proc_result_sync_pos;
		}
	} else return gml_thread_proc_error2(l_th,"Repeat `times` must be a number",l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_jump_on_repeat_jump(l_th,l_act){
	var l_p=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_f=l_st[l_st[0]]-1;
	l_st[@l_st[0]]=l_f;
	if(l_f>=1){
		l_q[@2]=l_p;
		return gml_thread_proc_result_sync_pos;
	}
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_jump_on_break(l_th,l_act){
	var l_q=l_th[3];
	l_q[@2]=l_act[2];
	return gml_thread_proc_result_sync_pos;
}

if(live_enabled)
function vm_group_jump_on_continue(l_th,l_act){
	var l_q=l_th[3];
	l_q[@2]=l_act[2];
	return gml_thread_proc_result_sync_pos;
}

if(live_enabled)
function vm_group_jump_on_return(l_th,l_act){
	var l_q=l_th[3];
	l_q[@2]=ds_list_size(l_q[1]);
	return gml_thread_proc_result_sync_pos;
}

if(live_enabled)
function vm_group_literal_on_undefined(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=undefined;
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_literal_on_number(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_act[2];
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_literal_on_cstring(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_act[2];
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_literal_on_const(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_act[2];
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_literal_on_self(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_inst=l_q[6];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_inst[l_inst[0]];
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_literal_on_other(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_inst=l_q[6];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_inst[l_inst[0]-1];
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_literal_on_result(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_th[0];
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_literal_on_array_decl(l_th,l_act){
	var l_n=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_arr=[];
	var l_k=l_st[0]-l_n;
	array_copy(l_arr,0,l_st,l_k+1,l_n);
	array_copy(l_st,l_k+1,gml_stack_fill_value_arr,0,l_n);
	l_st[@0]=l_k;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_arr;
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_literal_on_object_decl(l_th,l_act){
	var l_keys=l_act[2];
	var l_obj={}
	var l_n=array_length(l_keys);
	var l_stack=l_th[3][5];
	var l_stackStart=l_stack[0]-l_n+1;
	var l_i=l_n;
	while(--l_i>=0){
		variable_struct_set(l_obj,l_keys[l_i],l_stack[l_stackStart+l_i]);
	}
	gml_stack_discard_multi(l_stack,l_n);
	var l_i=l_stack[0]+1;
	if(l_i>=array_length(l_stack))l_stack[@array_length(l_stack)*2]=0;
	l_stack[@l_i]=l_obj;
	l_stack[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_local_on_local(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i1=l_st[0]+1;
	if(l_i1>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i1]=l_q[4][l_act[2]];
	l_st[@0]=l_i1;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_local_on_local_set(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i1=l_st[0];
	var l_r=l_st[l_i1];
	l_st[@l_i1]=0;
	l_st[@0]=l_i1-1;
	l_q[4][@l_act[2]]=l_r;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_local_on_local_aop(l_th,l_act){
	var l_i=l_act[3];
	var l_op=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_locals=l_q[4];
	var l_i1=l_st[0];
	var l_val=l_st[l_i1];
	l_st[@l_i1]=0;
	l_st[@0]=l_i1-1;
	var l_cur=l_locals[l_i];
	try{
		var l_fn=vm_group_op_funcs[l_op];
		l_cur=l_fn(l_cur,l_val);
	}catch(l__g){
		return gml_thread_proc_error2(l_th,gml_std_haxe_Exception_caught(l__g)[1],l_act)
	}
	l_locals[@l_i]=l_cur;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_op_impl_unknown(l_a,l_b){
	throw gml_std_haxe_Exception_thrown("No idea how to apply this operator");
}

if(live_enabled)
function vm_group_op_impl_add(l_a,l_b){
	if(is_string(l_a)&&is_string(l_b))return l_a+l_b; else return l_a+l_b;
}

if(live_enabled)
function vm_group_op_impl_sub(l_a,l_b){
	return l_a-l_b;
}

if(live_enabled)
function vm_group_op_impl_mul(l_a,l_b){
	return l_a*l_b;
}

if(live_enabled)
function vm_group_op_impl_div1(l_a,l_b){
	return l_a/l_b;
}

if(live_enabled)
function vm_group_op_impl_mod(l_a,l_b){
	return l_a%l_b;
}

if(live_enabled)
function vm_group_op_impl_idiv(l_a,l_b){
	return (l_a div l_b);
}

if(live_enabled)
function vm_group_op_impl_and(l_a,l_b){
	return (l_a&l_b);
}

if(live_enabled)
function vm_group_op_impl_or(l_a,l_b){
	return (l_a|l_b);
}

if(live_enabled)
function vm_group_op_impl_xor(l_a,l_b){
	return (l_a^l_b);
}

if(live_enabled)
function vm_group_op_impl_shl(l_a,l_b){
	return (l_a<<l_b);
}

if(live_enabled)
function vm_group_op_impl_shr(l_a,l_b){
	return (l_a>>l_b);
}

if(live_enabled)
function vm_group_op_impl_eq(l_a,l_b){
	return (l_a==l_b?1:0);
}

if(live_enabled)
function vm_group_op_impl_ne(l_a,l_b){
	return (l_a!=l_b?1:0);
}

if(live_enabled)
function vm_group_op_impl_gt(l_a,l_b){
	return (l_a>l_b?1:0);
}

if(live_enabled)
function vm_group_op_impl_ge(l_a,l_b){
	return (l_a>=l_b?1:0);
}

if(live_enabled)
function vm_group_op_impl_lt(l_a,l_b){
	return (l_a<l_b?1:0);
}

if(live_enabled)
function vm_group_op_impl_le(l_a,l_b){
	return (l_a<=l_b?1:0);
}

if(live_enabled)
function vm_group_op_impl(){
	var l_num=112;
	var l_fns=array_create(l_num,undefined);
	var l_i=0;
	for(var l__g1=l_num;l_i<l__g1;l_i++){
		l_fns[@l_i]=vm_group_op_impl_unknown;
	}
	l_fns[@16]=vm_group_op_impl_add;
	l_fns[@17]=vm_group_op_impl_sub;
	l_fns[@0]=vm_group_op_impl_mul;
	l_fns[@1]=vm_group_op_impl_div1;
	l_fns[@2]=vm_group_op_impl_mod;
	l_fns[@3]=vm_group_op_impl_idiv;
	l_fns[@49]=vm_group_op_impl_and;
	l_fns[@48]=vm_group_op_impl_or;
	l_fns[@50]=vm_group_op_impl_xor;
	l_fns[@32]=vm_group_op_impl_shl;
	l_fns[@33]=vm_group_op_impl_shr;
	l_fns[@64]=vm_group_op_impl_eq;
	l_fns[@65]=vm_group_op_impl_ne;
	l_fns[@68]=vm_group_op_impl_gt;
	l_fns[@69]=vm_group_op_impl_ge;
	l_fns[@66]=vm_group_op_impl_lt;
	l_fns[@67]=vm_group_op_impl_le;
	return l_fns;
}

if(live_enabled)
function vm_group_op_on_bin_op(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-1;
	l_st[@0]=l_z;
	var l_fn=vm_group_op_funcs[l_act[2]];
	l_st[@l_z]=l_fn(l_st[l_z],l_st[l_z+1]);
	l_st[@l_z+1]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_op_on_un_op(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0];
	switch(l_act[2]){
		case 2:l_st[@l_z]=~l_st[l_z];break;
		case 1:l_st[@l_z]=!l_st[l_z];break;
		case 0:l_st[@l_z]=-l_st[l_z];break;
	}
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_op_on_equ_op(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-1;
	l_st[@0]=l_z;
	l_st[@l_z]=l_st[l_z]==l_st[l_z+1];
	l_st[@l_z+1]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_op_on_neq_op(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-1;
	l_st[@0]=l_z;
	l_st[@l_z]=l_st[l_z]!=l_st[l_z+1];
	l_st[@l_z+1]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_op_on_add_int(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0];
	l_st[@l_z]=l_st[l_z]+l_act[2];
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_op_on_concat(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_z=l_st[0]-1;
	l_st[@0]=l_z;
	var l_v2=l_st[l_z+1];
	if(!is_string(l_v2))l_v2=gml_value_print(l_v2);
	var l_v1=l_st[l_z];
	if(!is_string(l_v1))l_v1=gml_value_print(l_v1);
	l_st[@l_z]=l_v1+l_v2;
	l_st[@l_z+1]=0;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_op_on_ds_aop(l_th,l_act){
	var l__out=l_act[6];
	var l_setterFunc=l_act[5];
	var l_getterFunc=l_act[4];
	var l_setterArgc=l_act[3];
	var l__o=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_k=1+l_setterArgc;
	var l_getterArgc=l_setterArgc-1;
	var l_v;
	try{
		var l_sf;
		if(l_getterArgc<81){
			l_sf=vm_gml_thread_exec_slice_funcs[l_getterArgc];
			l_v=l_sf(l_getterFunc,l_st,l_k);
		} else l_v=vm_gml_thread_exec_slice_error();
	}catch(l__g){
		var l_x=gml_std_haxe_Exception_caught(l__g)[1];
		gml_stack_pop_multi(l_st,l_setterArgc);
		return gml_thread_proc_error2(l_th,l_x,l_act);
	}
	try{
		var l_fn=vm_group_op_funcs[l__o];
		l_st[@l_k+l_getterArgc]=l_fn(l_v,l_st[l_k+l_getterArgc]);
	}catch(l__g){
		var l_x=gml_std_haxe_Exception_caught(l__g)[1];
		gml_stack_pop_multi(l_st,l_setterArgc);
		return gml_thread_proc_error2(l_th,l_x,l_act);
	}
	var l_sf;
	if(l_setterArgc<81){
		l_sf=vm_gml_thread_exec_slice_funcs[l_setterArgc];
		l_v=l_sf(l_setterFunc,l_st,l_k);
	} else l_v=vm_gml_thread_exec_slice_error();
	if(l__out){
		gml_stack_pop_multi(l_st,l_getterArgc);
		l_st[@l_st[0]]=l_v;
	} else gml_stack_pop_multi(l_st,l_setterArgc);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_special_on_wait(l_th,l_act){
	var l_q=l_th[3];
	var l_t=gml_stack_pop(l_q[5]);
	l_th[@1]=gml_thread_status_waiting;
	l_th[@4]=(is_numeric(l_t)?l_t:0);
	ds_list_add(l_q[9][7],l_th);
	return gml_thread_proc_result_error;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_special_on_fork(l_th,l_act){
	var l_out=l_act[2];
	var l_q=l_th[3];
	var l_st=l_q[5];
	if(l_out)gml_stack_push(l_st,1);
	var l_thf=gml_thread_fork(l_th);
	gml_thread_exec(l_thf);
	if(l_out)l_st[@l_st[0]]=0;
	return gml_thread_proc_result_sync_pos;
}

if(live_enabled)
function vm_group_special_on_try(l_th,l_act){
	var l_q=l_th[3];
	l_q[@8]=gml_link_create(l_act[2],l_q[8]);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_special_on_catch(l_th,l_act){
	var l_q=l_th[3];
	l_q[@8]=l_q[8][1];
	l_q[4][@l_act[2]]=l_th[6];
	l_th[@6]=undefined;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_special_on_finally(l_th,l_act){
	var l_q=l_th[3];
	l_q[@8]=l_q[8][1];
	l_q[@2]=l_act[2];
	return gml_thread_proc_result_sync_pos;
}

if(live_enabled)
function vm_group_special_on_throw(l_th,l_act){
	var l_q=l_th[3];
	return gml_thread_proc_error2(l_th,gml_std_Std_stringify(gml_stack_pop(l_q[5])),l_act);
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_stack_on_discard(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_stack_on_dup(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_st[l_i-1];
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_stack_on_dup2x(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0]+2;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i-1]=l_st[l_i-3];
	l_st[@l_i]=l_st[l_i-2];
	l_st[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_stack_on_dup_in(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0];
	var l_v=l_st[l_i++];
	l_st[@0]=l_i;
	var l_k=l_i-l_act[2];
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	while(--l_i>=l_k){
		l_st[@l_i+1]=l_st[l_i];
	}
	l_st[@l_k]=l_v;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_with_on_with_pre(l_th,l_act){
	var l_q=l_th[3];
	var l_st=l_q[5];
	var l_i=l_st[0];
	var l_val=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=l_i-1;
	var l_ctx=l_val;
	var l_arr,l_i,l_n;
	if(is_numeric(l_val)){
		if(l_ctx>=100000){
			if(instance_exists(l_ctx)){
				l_arr=vm__gml_with_data_gml_with_data_impl__alloc(1);
				l_arr[@0]=l_ctx;
				l_n=1;
			} else {
				l_arr=vm__gml_with_data_gml_with_data_impl__alloc(0);
				l_n=0;
			}
			l_q[@7]=gml_with_scope_create([l_n,l_arr,1],l_q[7]);
		} else {
			l_n=instance_number(l_ctx);
			l_arr=vm__gml_with_data_gml_with_data_impl__alloc(l_n);
			l_i=0;
			with (l_ctx) {
				l_arr[@l_i]=self;
				l_i++;
			}
			l_q[@7]=gml_with_scope_create([l_i,l_arr,1],l_q[7]);
		}
	} else {
		l_arr=vm__gml_with_data_gml_with_data_impl__alloc(0);
		l_q[@7]=gml_with_scope_create([0,l_arr,1],l_q[7]);
	}
	var l_inst=l_q[6];
	var l_i=l_inst[0]+1;
	if(l_i>=array_length(l_inst))l_inst[@array_length(l_inst)*2]=0;
	l_inst[@l_i]=undefined;
	l_inst[@0]=l_i;
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_with_on_with_next(l_th,l_act){
	var l_p=l_act[2];
	var l_q=l_th[3];
	var l_with1=l_q[7];
	if(l_with1[1]<l_with1[2]){
		var l_inst=l_q[6];
		l_inst[@l_inst[0]]=l_with1[3][l_with1[@1]++];
	} else {
		l_q[@2]=l_p;
		return gml_thread_proc_result_sync_pos;
	}
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_group_with_on_with_post(l_th,l_act){
	var l_q=l_th[3];
	var l_with1=l_q[7];
	if(l_with1!=undefined){
		var l_this1=l_with1[5];
		if(--l_this1[2]==0){
			var l_size=l_this1[0];
			var l_sln=(l_size>0?(log10(l_size)|0):0);
			if(l_sln<5)ds_stack_push(vm__gml_with_data_gml_with_data_impl__pools[l_sln],l_this1[1]);
		}
		l_q[@7]=l_with1[4];
		var l_this1=l_q[6];
		var l_i=l_this1[0];
		l_this1[@l_i]=0;
		l_this1[@0]=l_i-1;
	}
	return gml_thread_proc_result_ok;
}

if(live_enabled)
function vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,l_name,l_fn){
	var l_id=haxe_ds_basic_map_get(l_map,l_name);
	if(l_id!=undefined)l_funcs[@l_id]=l_fn; else throw gml_std_haxe_Exception_thrown("Can't find "+l_name);
}

if(live_enabled)
function vm_v2_gml_thread_v2_handlers_init(){
	var l_names=gml_std_Type_getEnumConstructs(mt_gml_action);
	var l_map=haxe_ds_string_map_create();
	var l_funcs=array_create(array_length(l_names),undefined);
	var l_i=0;
	for(var l__g1=array_length(l_names);l_i<l__g1;l_i++){
		haxe_ds_basic_map_set(l_map,l_names[l_i],l_i);
		l_funcs[@l_i]=vm_v2_gml_thread_v2_on_unknown;
	}
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"discard",vm_group_stack_on_discard);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"dup",vm_group_stack_on_dup);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"dup2x",vm_group_stack_on_dup2x);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"dup_in",vm_group_stack_on_dup_in);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"undefined",vm_group_literal_on_undefined);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"number",vm_group_literal_on_number);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"cstring",vm_group_literal_on_cstring);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"const",vm_group_literal_on_const);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"self",vm_group_literal_on_self);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"other",vm_group_literal_on_other);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"result",vm_group_literal_on_result);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"array_decl",vm_group_literal_on_array_decl);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"object_decl",vm_group_literal_on_object_decl);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"bin_op",vm_group_op_on_bin_op);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"un_op",vm_group_op_on_un_op);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"equ_op",vm_group_op_on_equ_op);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"neq_op",vm_group_op_on_neq_op);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"add_int",vm_group_op_on_add_int);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"concat",vm_group_op_on_concat);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"ds_aop",vm_group_op_on_ds_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"arg_count",vm_group_arg_on_arg_count);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"arg_const",vm_group_arg_on_arg_const);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"arg_const_set",vm_group_arg_on_arg_const_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"arg_const_aop",vm_group_arg_on_arg_const_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"arg_index",vm_group_arg_on_arg_index);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"arg_index_set",vm_group_arg_on_arg_index_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"arg_index_aop",vm_group_arg_on_arg_index_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"local",vm_group_local_on_local);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"local_set",vm_group_local_on_local_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"local_aop",vm_group_local_on_local_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"global",vm_group_global_on_global);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"global_set",vm_group_global_on_global_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"global_aop",vm_group_global_on_global_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"field",vm_group_field_on_field);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"field_set",vm_group_field_on_field_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"field_aop",vm_group_field_on_field_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"in",vm_group_field_on_in);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"with_pre",vm_group_with_on_with_pre);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"with_next",vm_group_with_on_with_next);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"with_post",vm_group_with_on_with_post);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"env",vm_group_env_on_env);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"env_set",vm_group_env_on_env_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"env_aop",vm_group_env_on_env_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"env1d",vm_group_env_on_env1d);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"env1d_set",vm_group_env_on_env1d_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"env1d_aop",vm_group_env_on_env1d_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"index",vm_group_array_on_index);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"index_set",vm_group_array_on_index_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"index_aop",vm_group_array_on_index_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"index2d",vm_group_array_on_index2d);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"index2d_set",vm_group_array_on_index2d_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"index2d_aop",vm_group_array_on_index2d_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"ensure_array_local",vm_group_ensure_on_ensure_array_local);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"ensure_array_global",vm_group_ensure_on_ensure_array_global);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"ensure_array_field",vm_group_ensure_on_ensure_array_field);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"alarm",vm_group_alarm_on_alarm);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"alarm_set",vm_group_alarm_on_alarm_set);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"alarm_aop",vm_group_alarm_on_alarm_aop);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"jump",vm_group_jump_on_jump);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"jump_if",vm_group_jump_on_jump_if);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"jump_unless",vm_group_jump_on_jump_unless);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"bool_and",vm_group_jump_on_bool_and);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"bool_or",vm_group_jump_on_bool_or);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"switch",vm_group_jump_on_switch);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"switch_case",vm_group_jump_on_switch_case);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"repeat_pre",vm_group_jump_on_repeat_pre);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"repeat_jump",vm_group_jump_on_repeat_jump);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"break",vm_group_jump_on_break);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"continue",vm_group_jump_on_continue);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"return",vm_group_jump_on_return);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"wait",vm_group_special_on_wait);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"fork",vm_group_special_on_fork);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"try",vm_group_special_on_try);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"catch",vm_group_special_on_catch);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"finally",vm_group_special_on_finally);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"throw",vm_group_special_on_throw);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"call_script",vm_group_call_on_call_script);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"call_script_id",vm_group_call_on_call_script_id);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"call_script_with_array",vm_group_call_on_call_script_with_array);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"call_func",vm_group_call_on_call_func);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"call_field",vm_group_call_on_call_field);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"construct",vm_group_call_on_construct);
	vm_v2_gml_thread_v2_handlers_init_set(l_funcs,l_map,"func_literal",vm_group_call_on_func_literal);
	return l_funcs;
}

if(live_enabled)
function vm_v2_gml_thread_v2_on_unknown(l_th,l_act){
	gml_thread_proc_error(l_th,"Can't execute "+gml_std_Type_enumConstructor(l_act),l_act);
	return gml_thread_proc_result_error;
}

globalvar gml_builder_build_line_is_stat;
globalvar gml_builder_build_line_is_expr;
globalvar gml_compile_error_text;
globalvar gml_compile_error_pos;
globalvar gml_compile_curr_script;
globalvar gml_compile_curr_program;
globalvar gml_compile_curr_break;if(live_enabled)gml_compile_curr_break=-1;
globalvar gml_compile_curr_continue;if(live_enabled)gml_compile_curr_continue=-1;
globalvar gml_parser_has_func_literal;if(live_enabled)gml_parser_has_func_literal=false;
globalvar gml_parser_has_constructor;if(live_enabled)gml_parser_has_constructor=false;
globalvar gml_parser_has_try_catch;if(live_enabled)gml_parser_has_try_catch=true;
globalvar gml_parser_gml23;if(live_enabled)gml_parser_gml23=false;
globalvar gml_parser_error_text;
globalvar gml_parser_error_pos;
globalvar gml_parser_src_buf;if(live_enabled)gml_parser_src_buf=buffer_create(1024,buffer_fast,1);
globalvar gml_parser_str_buf;if(live_enabled)gml_parser_str_buf=buffer_create(1024,buffer_grow,1);
globalvar gml_parser_buf_sub_buf;if(live_enabled)gml_parser_buf_sub_buf=buffer_create(1024,buffer_grow,1);
globalvar gml_parser_tem_row;
globalvar gml_parser_tem_row_start;
globalvar gml_parser_tem_end;
globalvar gml_parser_tokens_found;
globalvar gml_program_seek_inst;
globalvar gml_program_seek_func;
globalvar gml_program_seek_script;
enum gml_macro{name=1,node=2,is_expr=3,is_stat=4}
globalvar ast_gml_node_tools_ni_concat_pos_pos;
globalvar gml_script_index_offset;if(live_enabled)gml_script_index_offset=0;
enum gml_source{name=1,code=2,main=3,length=4,opt=5,tokens=6,token_count=7,__eof=8}
globalvar gml_func_sig;if(live_enabled)gml_func_sig=haxe_ds_string_map_create();
globalvar gml_func_arg0;if(live_enabled)gml_func_arg0=haxe_ds_string_map_create();
globalvar gml_func_arg1;if(live_enabled)gml_func_arg1=haxe_ds_string_map_create();
globalvar gml_func_args;if(live_enabled)gml_func_args=haxe_ds_string_map_create();
globalvar gml_func_rest;if(live_enabled)gml_func_rest=haxe_ds_string_map_create();
globalvar gml_func_eval;if(live_enabled)gml_func_eval=haxe_ds_string_map_create();
globalvar gml_func_script;if(live_enabled)gml_func_script=haxe_ds_string_map_create();
globalvar gml_func_script_id;if(live_enabled)gml_func_script_id=haxe_ds_string_map_create();
globalvar gml_inst_data;if(live_enabled)gml_inst_data=haxe_ds_string_map_create();
globalvar gml_var_flags;if(live_enabled)gml_var_flags=haxe_ds_string_map_create();
globalvar gml_var_refs;if(live_enabled)gml_var_refs=haxe_ds_string_map_create();
globalvar gml_var_types;if(live_enabled)gml_var_types=haxe_ds_string_map_create();
globalvar gml_const_map;if(live_enabled)gml_const_map=haxe_ds_string_map_create();
globalvar gml_const_val;if(live_enabled)gml_const_val=haxe_ds_string_map_create();
globalvar gml_asset_index;if(live_enabled)gml_asset_index=haxe_ds_string_map_create();
globalvar gml_enum_map;if(live_enabled)gml_enum_map=haxe_ds_string_map_create();
globalvar gml_seek_eval_error_text;
globalvar gml_seek_eval_error_pos;
globalvar gml_seek_eval_eval_rec;
globalvar gml_seek_eval_eval_thread;if(live_enabled)gml_seek_eval_eval_thread=undefined;
globalvar gml_seek_eval_eval_actions;if(live_enabled)gml_seek_eval_eval_actions=ds_list_create();
globalvar gml_seek_eval_invalid_value;if(live_enabled)gml_seek_eval_invalid_value=[];
globalvar gml_seek_set_op_resolve_set_op_safe;
globalvar gml_seek_set_op_resolve_set_op_xw;
globalvar gml_std_gml_internal_ArrayImpl_join_buf;if(live_enabled)gml_std_gml_internal_ArrayImpl_join_buf=undefined;
globalvar haxe_ds_basic_map_blank;if(live_enabled)haxe_ds_basic_map_blank=[];
globalvar live_async_http_1_found;if(live_enabled)live_async_http_1_found=haxe_ds_string_map_create();
globalvar live_async_http_1_acc;if(live_enabled)live_async_http_1_acc=ds_list_create();
globalvar live_shader_updated;if(live_enabled)live_shader_updated=live_shader_updated_default;
globalvar live_shader_live_shaders;if(live_enabled)live_shader_live_shaders=ds_map_create();
globalvar live_shader_live_shaders_start;if(live_enabled)live_shader_live_shaders_start=ds_list_create();
globalvar live_shader_live_shaders_stop;if(live_enabled)live_shader_live_shaders_stop=ds_list_create();
globalvar live_is_ready;if(live_enabled)live_is_ready=false;
globalvar live_request_url;if(live_enabled)live_request_url=undefined;
globalvar live_request_guid;if(live_enabled)live_request_guid=undefined;
globalvar live_request_id;if(live_enabled)live_request_id=undefined;
globalvar live_request_time;if(live_enabled)live_request_time=0;
globalvar live_request_rate;if(live_enabled)live_request_rate=1;
globalvar live_request_password;if(live_enabled)live_request_password="";
globalvar live_result;if(live_enabled)live_result="";
globalvar live_directory;
globalvar live_live_map;if(live_enabled)live_live_map=haxe_ds_string_map_create();
globalvar live_live_enums;if(live_enabled)live_live_enums=haxe_ds_string_map_create();
globalvar live_live_macros;if(live_enabled)live_live_macros=haxe_ds_string_map_create();
globalvar live_live_globals;if(live_enabled)live_live_globals=undefined;
globalvar live_live_sprites;if(live_enabled)live_live_sprites=ds_map_create();
globalvar live_live_sprites_start;if(live_enabled)live_live_sprites_start=ds_list_create();
globalvar live_live_sprites_stop;if(live_enabled)live_live_sprites_stop=ds_list_create();
globalvar live_live_room;if(live_enabled)live_live_room=-1;
globalvar live_live_room_data;if(live_enabled)live_live_room_data=ds_map_create();
globalvar live_live_rooms;if(live_enabled)live_live_rooms=ds_map_create();
globalvar live_live_rooms_start;if(live_enabled)live_live_rooms_start=ds_list_create();
globalvar live_live_rooms_stop;if(live_enabled)live_live_rooms_stop=ds_list_create();
globalvar live_blank_object;if(live_enabled)live_blank_object=-1;
globalvar live_blank_room;if(live_enabled)live_blank_room=-1;
globalvar live_temp_path;if(live_enabled)live_temp_path=live_temp_path_init();
globalvar live_log_script;if(live_enabled)live_log_script=live_log_impl;
globalvar live_update_script;if(live_enabled)live_update_script=live_update_script_impl;
globalvar live_name;if(live_enabled)live_name=undefined;
globalvar live_custom_self;if(live_enabled)live_custom_self=undefined;
globalvar live_custom_other;if(live_enabled)live_custom_other=undefined;
globalvar live_room_updated;if(live_enabled)live_room_updated=live_room_updated_impl;
globalvar live_room_loader_object_cache;if(live_enabled)live_room_loader_object_cache=ds_map_create();
globalvar live_room_loader_sprite_cache;if(live_enabled)live_room_loader_sprite_cache=ds_map_create();
globalvar live_room_loader_use_physics;if(live_enabled)live_room_loader_use_physics=false;
globalvar live_room_loader_room_x;if(live_enabled)live_room_loader_room_x=0;
globalvar live_room_loader_room_y;if(live_enabled)live_room_loader_room_y=0;
globalvar live_room_loader_apply_backgrounds;if(live_enabled)live_room_loader_apply_backgrounds=true;
globalvar live_room_loader_apply_instances;if(live_enabled)live_room_loader_apply_instances=true;
globalvar live_room_loader_apply_tiles;if(live_enabled)live_room_loader_apply_tiles=true;
globalvar live_room_loader_apply_views;if(live_enabled)live_room_loader_apply_views=true;
globalvar live_room_loader_apply_settings;if(live_enabled)live_room_loader_apply_settings=true;
globalvar live_room_loader_apply_sprites;if(live_enabled)live_room_loader_apply_sprites=true;
globalvar live_room_loader_inst_map_gml;if(live_enabled)live_room_loader_inst_map_gml=ds_map_create();
globalvar live_room_loader_inst_map_yy;if(live_enabled)live_room_loader_inst_map_yy=ds_map_create();
globalvar gml_stack_fill_value_arr;if(live_enabled)gml_stack_fill_value_arr=array_create(1024,0);
globalvar gml_thread_allow_exceptions;if(live_enabled)gml_thread_allow_exceptions=false;
globalvar gml_thread_current;if(live_enabled)gml_thread_current=undefined;
globalvar vm_gml_thread_exec_slice_funcs;if(live_enabled)vm_gml_thread_exec_slice_funcs=vm_gml_thread_exec_slice_init();
globalvar gml_thread_status_none;gml_thread_status_none=[gml_thread_status.none];
globalvar gml_thread_status_running;gml_thread_status_running=[gml_thread_status.running];
globalvar gml_thread_status_waiting;gml_thread_status_waiting=[gml_thread_status.waiting];
globalvar gml_thread_status_done;gml_thread_status_done=[gml_thread_status.done];
globalvar gml_thread_status_error;gml_thread_status_error=[gml_thread_status.error];
globalvar gml_type_check_map;if(live_enabled)gml_type_check_map=gml_type_check_init();
globalvar gml_value_print_refs;if(live_enabled)gml_value_print_refs=ds_map_create();
globalvar gml_value_print_num;if(live_enabled)gml_value_print_num=0;
globalvar vm__gml_with_data_gml_with_data_impl__pools;if(live_enabled)vm__gml_with_data_gml_with_data_impl__pools=vm__gml_with_data_gml_with_data_impl__init();
globalvar vm_impl_gml_thread_construct_funcs;if(live_enabled)vm_impl_gml_thread_construct_funcs=vm_impl_gml_thread_construct_init();
globalvar vm_group_call_call_func_result;
globalvar vm_group_call_call_func_status;
globalvar vm_group_op_funcs;if(live_enabled)vm_group_op_funcs=vm_group_op_impl();
globalvar gml_thread_proc_result_ok;gml_thread_proc_result_ok=[0];
globalvar gml_thread_proc_result_error;gml_thread_proc_result_error=[1];
globalvar gml_thread_proc_result_sync_pos;gml_thread_proc_result_sync_pos=[2];
globalvar gml_thread_proc_result_sync_scope;gml_thread_proc_result_sync_scope=[3];
globalvar vm_v2_gml_thread_v2_handlers;if(live_enabled)vm_v2_gml_thread_v2_handlers=vm_v2_gml_thread_v2_handlers_init();

if(live_enabled){
	gml_parser_set_gml23(true);
	live_preinit_api();
	live_preinit_project();
}
