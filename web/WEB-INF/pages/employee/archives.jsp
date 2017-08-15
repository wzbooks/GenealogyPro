﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Table</title>
	<link rel="stylesheet" href="/payroll/BA/plugins/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="/payroll/BA/css/global.css" media="all">
	<link rel="stylesheet" href="/payroll/BA/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/payroll/BA/css/table.css" />

	<script src="https://cdn.jsdelivr.net/jquery/1.12.3/jquery.min.js"></script>
	<%--<script type="text/javascript" src="/js/jquery-1.8.2.min.js"></script>--%>
	<script type="text/javascript" src="/payroll/nice-validator/dist/jquery.validator.min.js?local=zh-CN"></script>
</head>

<body>
<div id="detailsForm" style="display: none;"><br/>
	<div class="layui-form-item">
		<div style="float: left">
			<label class="layui-form-label">员工号</label>
			<input type="text" id="employeeNumber" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>

		<div style="float: left">
			<label class="layui-form-label">邮箱</label>
			<input type="text" id="mailbox" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>
	</div>

	<div class="layui-form-item">
		<div style="float: left">
			<label class="layui-form-label">姓名</label>
			<input type="text" id="name" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>

		<div style="float: left">
			<label class="layui-form-label">英文名</label>
			<input type="text" id="englishName" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>
	</div>

	<div class="layui-form-item">
		<div style="float: left">
			<label class="layui-form-label">证件类型</label>
			<input type="text" id="documentType" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>

		<div style="float: left">
			<label class="layui-form-label">证件号</label>
			<input type="text" id="documentNumber" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>
	</div>

	<div class="layui-form-item">
		<div style="float: left">
			<label class="layui-form-label">所在公司</label>
			<input type="text" id="branchOffice" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>

		<div style="float: left">
			<label class="layui-form-label">所在部门</label>
			<input type="text" id="department" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>
	</div>

	<div class="layui-form-item">
		<div style="float: left">
			<label class="layui-form-label">私人号码</label>
			<input type="text" id="cellPhone" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>

		<div style="float: left">
			<label class="layui-form-label">工作号码</label>
			<input type="text" id="workPhone" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>
	</div>

	<div class="layui-form-item">
		<div style="float: left">
			<label class="layui-form-label">用工关系</label>
			<input type="text" id="employmentRelationship" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>

		<div style="float: left">
			<label class="layui-form-label">入职时间</label>
			<input type="text" id="inductionTime" style="width: 200px" required autocomplete="off" class="layui-input" />
		</div>
	</div>
</div>

<div class="layui-form" id="insertOrUpdateForm" style="display: none;padding-left: 20%;"><br/>
	<form id="validform1" data-validator-option="{timely:3,showOk:''}">  <%--为了跳过验证的bug套个form，唉--%>
        <div class="layui-form-item">
            <label class="layui-form-label">员工号</label>
            <div class="layui-input-inline">
                <input id="id_value" type="hidden"/>
                <input type="text" id="employeeNumber_value" name="employeeNumber_value" data-rule="required;integer(+);length(~10)" required placeholder="请输入员工号" autocomplete="off" class="layui-input"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="text" id="name_value" name="name_value"  data-rule="required;length(~10);chinese" required placeholder="请输入姓名" autocomplete="off" class="layui-input"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">英文名</label>
            <div class="layui-input-inline">
                <input type="text" id="englishName_value" data-rule="letters" required placeholder="请输入英文名" autocomplete="off" class="layui-input"/>
            </div>
        </div>
	</form>

	<div class="layui-form-item">
		<label class="layui-form-label">证件类型</label>
		<div class="layui-input-inline">
			<select name="documentType_value" id="documentType_value">
				<option></option>
				<c:forEach items="${documentType}" var="doc">
					<option value="${doc.id}">${doc.name}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<form id="validform2" data-validator-option="{timely:3,showOk:''}">  <%--为了跳过验证的bug套个form，唉--%>
        <div class="layui-form-item">
            <label class="layui-form-label">证件号</label>
            <div class="layui-input-inline">
                <input type="text" id="documentNumber_value" data-rule="required;length(~18)" required placeholder="请输入证件号" autocomplete="off" class="layui-input"/>
            </div>
        </div>
	</form>

	<div class="layui-form-item">
		<label class="layui-form-label">用工关系</label>
		<div class="layui-input-inline">
			<select name="employmentRelationship_value" id="employmentRelationship_value">
				<option></option>
				<c:forEach items="${employmentRelationship}" var="emp">
					<option value="${emp.id}">${emp.name}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">所在公司</label>
		<div class="layui-input-inline">
			<select name="branchOffice_value" id="branchOffice_value">
				<option></option>
				<c:forEach items="${branchOffice}" var="bra">
					<option value="${bra.id}">${bra.name}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">所在部门</label>
		<div class="layui-input-inline">
			<select name="department_value" id="department_value">
				<option></option>
				<c:forEach items="${department}" var="dep">
					<option value="${dep.id}">${dep.name}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<form id="validform3" data-validator-option="{timely:3,showOk:''}">  <%--为了跳过验证的bug套个form，唉--%>
        <div class="layui-form-item">
            <label class="layui-form-label">私人号码</label>
            <div class="layui-input-inline">
                <input type="text" id="cellPhone_value" data-rule="required;mobile" required placeholder="请输入私人号码" autocomplete="off" class="layui-input"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">工作号码</label>
            <div class="layui-input-inline">
                <input type="text" id="workPhone_value" data-rule="mobile" required placeholder="请输入工作号码" autocomplete="off" class="layui-input"/>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">入职时间</label>
            <div class="layui-inline">
                <input class="layui-input" id="inductionTime_value" data-rule="required;date" placeholder="请输入入职时间" onclick="layui.laydate({elem: this, festival: true})">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-inline">
                <input type="text" id="mailbox_value" data-rule="required;email" required placeholder="请输入邮箱" autocomplete="off" class="layui-input"/>
            </div>
        </div>
	</form>
</div>

<div class="layui-form" id="queryForm" style="display: none;padding-left: 7%;"><br/>
	<div class="layui-form-item">
		<label class="layui-form-label">员工号</label>
		<div class="layui-input-inline">
			<input type="text" id="employeeNumber_query" required placeholder="请输入员工号" autocomplete="off" class="layui-input"/>
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">姓名</label>
		<div class="layui-input-inline">
			<input type="text" id="name_query" required placeholder="请输入姓名" autocomplete="off" class="layui-input"/>
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">英文名</label>
		<div class="layui-input-inline">
			<input type="text" id="englishName_query" required placeholder="请输入英文名" autocomplete="off" class="layui-input"/>
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">所在公司</label>
		<div class="layui-input-inline">
			<select name="branchOffice_query">
				<option></option>
				<c:forEach items="${branchOffice}" var="bra">
					<option value="${bra.id}">${bra.name}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">所在部门</label>
		<div class="layui-input-inline">
			<select name="department_query">
				<option></option>
				<c:forEach items="${department}" var="dep">
					<option value="${dep.id}">${dep.name}</option>
				</c:forEach>
			</select>
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">是否离职</label>
		<div class="layui-input-inline">
			<select name="isLeave_query">
				<option></option>
				<option value="0">否</option>
				<option value="1">是</option>
			</select>
		</div>
	</div>
</div>

<div class="admin-main">

	<blockquote class="layui-elem-quote">
		<button class="layui-btn layui-btn-small" id="insert" onclick="insertOrUpdate()">
			<i class="layui-icon">&#xe608;</i> 添加信息
		</button>
		<button class="layui-btn layui-btn-small" id="import">
			<i class="layui-icon">&#xe608;</i> 导入信息
		</button>
		<button class="layui-btn layui-btn-small">
			<i class="fa fa-shopping-cart" aria-hidden="true"></i> 导出信息
		</button>
		<button class="layui-btn layui-btn-small" id="getSelected">
			<i class="fa fa-shopping-cart" aria-hidden="true"></i> 获取全选信息
		</button>
		<button class="layui-btn layui-btn-small" id="search" onclick="query()">
			<i class="layui-icon">&#xe615;</i> 搜索
		</button>
	</blockquote>
	<fieldset class="layui-elem-field">
		<legend>档案列表</legend>
		<div class="layui-field-box layui-form">
			<table class="layui-table admin-table">
				<thead>
				<tr>
					<th style="width: 30px;"><input type="checkbox" lay-filter="allselector" lay-skin="primary"></th>
					<th>员工号</th>
					<th>姓名</th>
					<th>英文名</th>
					<th>证件类型</th>
					<th>证件号</th>
					<th>所在公司</th>
					<th>所在部门</th>
					<th>私人号码</th>
					<th>入职时间</th>
					<th>操作</th>
				</tr>
				</thead>
				<tbody id="content">
				<c:forEach items="${archives}" var="arc">
					<tr>
						<td><input type="checkbox" lay-skin="primary"></td>
						<td>${arc.employeeNumber}</td>
						<td>${arc.name}</td>
						<td>${arc.englishName}</td>
						<td>${arc.documentType}</td>
						<td>${arc.documentNumber}</td>
						<td>${arc.branchOffice}</td>
						<td>${arc.department}</td>
						<td>${arc.cellPhone}</td>
						<td>${arc.inductionTime}</td>
						<td>
							<button onclick="details(${arc.id})" target="_blank" class="layui-btn layui-btn-normal layui-btn-mini">查看</button>
							<button onclick="insertOrUpdate(${arc.id})" class="layui-btn layui-btn-mini">编辑</button>
							<button onclick="deleteArchives(${arc.id})" class="layui-btn layui-btn-danger layui-btn-mini">删除</button>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</fieldset>
	<div class="admin-table-page">
		<div id="paged" class="page">
		</div>
	</div>
</div>

<script type="text/javascript" src="/payroll/BA/plugins/layui/layui.js"></script>
<script>
    var validOneType = false, validTwoType = false, validThreeType = false;

	layui.config({
		base: '/payroll/BA/js/'
	});

	layui.use(['paging', 'form'], function() {
		var $ = layui.jquery,
				layerTips = parent.layer === undefined ? layui.layer : parent.layer, //获取父窗口的layer对象
				layer = layui.layer, //获取当前窗口的layer对象
				form = layui.form();

		//重新渲染复选框
		form.render('checkbox');
		form.on('checkbox(allselector)', function(data) {
			var elem = data.elem;

			$('#content').children('tr').each(function() {
				var $that = $(this);
				//全选或反选
				$that.children('td').eq(0).children('input[type=checkbox]')[0].checked = elem.checked;
				form.render('checkbox');
			});
		});

		//绑定所有编辑按钮事件
		$('#content').children('tr').each(function() {
			var $that = $(this);
			$that.children('td:last-child').children('a[data-opt=edit]').on('click', function() {
				layer.msg($(this).data('name'));
			});

		});
	});

	layui.use('laydate', function(){
		var laydate = layui.laydate;
	});

	function query(){
		var $ = layui.jquery;
		layer.open({
			type:1,
			area:['400px','300px'],
			title:'查询档案',
			content:$('#queryForm'),
			btn:['查询','取消'],
			yes:function(){
				$.ajax({
					url:"/payroll/get",
					type:"POST",
					data:{
						"employeeNumber":$('#employeeNumber_query').val(),
						"name":$('#name_query').val(),
						"englishName":$('#englishName_query').val(),
						"branchOffice":$("select[name='branchOffice_query']").val(),
						"department":$("select[name='department_query']").val(),
						"isLeave":$("select[name='isLeave_query']").val()
					},
					success:function(data){
						$('#content').empty();
						if(data.length<=0){
							return;
						}

						var line;
						$(data).each(function(){
							line+="<tr><td><input type='checkbox' lay-skin='primary'/></td><td>"+this.employeeNumber+"</td><td>"+this.name+"</td><td>"+this.englishName+"</td><td>"+this.documentType+"</td><td>"+this.documentNumber+"</td><td>"+this.branchOffice+"</td><td>"+this.department+"</td><td>"+this.cellPhone+"</td><td>"+this.inductionTime+"</td>" +
									"<td><button onclick='details("+this.id+")' target='_blank' class='layui-btn layui-btn-normal layui-btn-mini'>查看</button> <button onclick='insertOrUpdate("+this.id+")' class='layui-btn layui-btn-mini'>编辑</button> <button onclick='deleteArchives("+this.id+")' class='layui-btn layui-btn-danger layui-btn-mini'>删除</button> </td></tr>";
						});

						$('#content').append(line);
						//渲染一下checkbox
						var form = layui.form();
						form.render('checkbox');
						layer.close(layer.index);
					}
				});
			}
		})
	}

	function details(id){
		var $ = layui.jquery;
		$.post("/payroll/get",{"id":id},function(data){
			var archives = data[0];
			$('#employeeNumber').val(archives.employeeNumber);
			$('#mailbox').val(archives.mailbox);
			$('#name').val(archives.name);
			$('#englishName').val(archives.englishName);
			$('#documentType').val(archives.documentType);
			$('#documentNumber').val(archives.documentNumber);
			$('#branchOffice').val(archives.branchOffice);
			$('#department').val(archives.department);
			$('#cellPhone').val(archives.cellPhone);
			$('#workPhone').val(archives.workPhone);
			$('#employmentRelationship').val(archives.employmentRelationship);
			$('#inductionTime').val((archives.inductionTime));
		});
		layer.open({
			type: 1,
			area:'700px',
			title:'档案详情',
			maxmin:true,
			content: $('#detailsForm')
		});
	}

	function insertOrUpdate(id){
		var $ = layui.jquery;
		var title;

		if(id==null){
			title = "添加档案";
		}else{
			title = "修改档案";
			//$('#insertOrUpdateForm').empty();
			$.post("/payroll/get",{"id":id},function(data){
				var archives = data[0];
				$('#id_value').val(archives.id);
				$('#employeeNumber_value').val(archives.employeeNumber);
				$('#mailbox_value').val(archives.mailbox);
				$('#name_value').val(archives.name);
				$('#englishName_value').val(archives.englishName);

				/*var documentTypeVO=archives.documentType;
				$("#documentType_value option").each(function(){
					if($(this).text()==archives.documentType){
						$(this).attr("selected");
					}
				});*/

				document.getElementById("documentType_value").value=archives.documentTypeId;
				//$('#documentType_value option[value=7]').attr('selected',true);

				$('#documentNumber_value').val(archives.documentNumber);
				$('#branchOffice_value').val(archives.branchOfficeId);
				$('#department_value').val(archives.department);
				$('#cellPhone_value').val(archives.cellPhone);
				$('#workPhone_value').val(archives.workPhone);
				$('#employmentRelationship_value').val(archives.employmentRelationship);
				$('#inductionTime_value').val(archives.inductionTime);

				var form = layui.form();
				form.render('select');
			});
		}
		layer.open({
			type: 1,
			area:['600px','450px'],
			title:title,
			maxmin:true,
			btn:['保存','取消'],
			content: $('#insertOrUpdateForm'),
			yes: function(index,layero){

                alert(validOneType);
                alert(validTwoType);
                alert(validThreeType);
                if(validOneType==true && validTwoType==true && validThreeType==true){
                    var employeeNumber = $('#employeeNumber_value').val();
                    var id = $('#id_value').val();
                    var name = $('#name_value').val();
                    var englishName = $('#englishName_value').val();
                    var documentType = $("select[name='documentType_value']").val();
                    var documentNumber = $('#documentNumber_value').val();
                    var employmentRelationship = $("select[name='employmentRelationship_value']").val();
                    var branchOffice = $("select[name='branchOffice_value']").val();
                    var department = $("select[name='department_value']").val();
                    var cellPhone = $('#cellPhone_value').val();
                    var workPhone = $('#workPhone_value').val();
                    var inductionTime = $('#inductionTime_value').val();
                    var mailbox = $('#mailbox_value').val();

                    var json;
                    json+= '{"employeeNumber":"'+employeeNumber+'",';

                    if(id!='' && id!=null){
                        json+= '"id":"'+id+'",';
                    }

                    json+= '"name":"'+name+'",';
                    if(englishName!='' && englishName!=null){
                        json+= '"englishName":"'+englishName+'",';
                    }

                    json+= '"documentType":"'+documentType+'",';
                    json+= '"documentNumber":"'+documentNumber+'",';
                    json+= '"employmentRelationship":"'+employmentRelationship+'",';
                    json+= '"branchOffice":"'+branchOffice+'",';
                    json+= '"department":"'+department+'",';
                    json+= '"cellPhone":"'+cellPhone+'",';
                    json+= '"workPhone":"'+workPhone+'",';
                    json+= '"inductionTime":"'+inductionTime+'",';
                    json+= '"mailbox":"'+mailbox+'"}';

                    alert(json);

                    $.ajax({
                        url:'/payroll/insertorupdatearchives',
                        type:'POST',
                        data:{"archives":json},
                        success:function(){
                            window.location.reload();
                        }

                    });
                }else {
                    var layer = layui.layer;
                    layer.msg("您的信息没有填写完整！请检查");
                }
			}
		});
	}

	function deleteArchives(id){
		var $ = layui.jquery;
		var layer = layui.layer;

		layer.confirm("确定要删除吗？",{icon: 3, title:'提示'},function(index){
			$.ajax({
				url:"/payroll/deletearchives",
				type:"POST",
				data:{
					"id":id
				},
				success:function(){
					window.location.reload();
				}
			})
			layer.close(index);
		});
	}

/*	$('#insertOrUpdateForm').validator({
		fields:{
			'employeeNumber_value':'required',
			'documentType_value':'required'
		}
	});*/

    $('#validform1').on('validation', function(e, current){
        var form = this;
        if(form.isValid==true){
            validOneType = true;
        }
    });

    $('#validform2').on('validation', function(e, current){
        var form = this;
        if(form.isValid==true){
            validTwoType = true;
        }
    });

    $('#validform3').on('validation', function(e, current){
        var form = this;
        if(form.isValid==true){
            validThreeType = true;
        }
    });

</script>
</body>

</html>