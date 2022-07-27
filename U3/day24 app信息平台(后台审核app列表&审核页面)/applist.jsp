<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">

	<div class="col-md-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					APP 审核列表 <i class="fa fa-user"></i><small>${userSession.userName}
						- 您可以通过搜索或者其他的筛选项对APP的信息进行审核操作。^_^</small>
				</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form method="post" id="form1"  action="${pageContext.request.contextPath}/noPassAppInfo">
					<!--注意:控制器中接收页码的我名称叫page-->
					<input type="hidden" id="setPage" name="page" value="1" />
			    <ul>
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input name="querySoftwareName" type="text" class="form-control col-md-7 col-xs-12" value="${condition.querySoftwareName }">
							</div>
						</div>
					</li>
					
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">所属平台</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="queryFlatformId" name="queryFlatformId"  class="form-control">
									   <option value="">--请选择--</option>
        						</select>
							</div>
						</div>
					</li>
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">一级分类</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="queryCategoryLevel1" name="queryCategoryLevel1" class="form-control">
									   <option value="">--请选择--</option>
        						</select>
							</div>
						</div>
					</li>
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">二级分类</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
							<input type="hidden" name="categorylevel2list" id="categorylevel2list"/>
        						<select name="queryCategoryLevel2" id="queryCategoryLevel2" class="form-control">
									   <option value="">--请选择--</option>
        						</select>
							</div>
						</div>
					</li>
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">三级分类</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
        						<select name="queryCategoryLevel3" id="queryCategoryLevel3" class="form-control">
									   <option value="">--请选择--</option>
        						</select>
							</div>
						</div>
					</li>
					<li><button type="submit" class="btn btn-primary"> 查 &nbsp;&nbsp;&nbsp;&nbsp;询 </button></li>
				</ul>
			</form>
		</div>
	</div>
</div>
<div class="col-md-12 col-sm-12 col-xs-12">
	<div class="x_panel">
		<div class="x_content">
			<p class="text-muted font-13 m-b-30"></p>
			<div id="datatable-responsive_wrapper"
				class="dataTables_wrapper form-inline dt-bootstrap no-footer">
				<div class="row">
					<div class="col-sm-12">
						<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
							cellspacing="0" width="100%" role="grid" aria-describedby="datatable-responsive_info" style="width: 100%;">
							<thead>
								<tr role="row">
									<th class="sorting_asc" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 70px;" aria-label="First name: activate to sort column descending"
										aria-sort="ascending">软件名称</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 10px;"
										aria-label="Last name: activate to sort column ascending">
										APK名称</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 90px;"
										aria-label="Last name: activate to sort column ascending">
										软件大小(单位:M)</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 50px;"
										aria-label="Last name: activate to sort column ascending">
										所属平台</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 170px;"
										aria-label="Last name: activate to sort column ascending">
										所属分类(一级分类、二级分类、三级分类)</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 30px;"
										aria-label="Last name: activate to sort column ascending">
										状态</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 30px;"
										aria-label="Last name: activate to sort column ascending">
										下载次数</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 64px;"
										aria-label="Last name: activate to sort column ascending">
										最新版本号</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 30px;"
										aria-label="Last name: activate to sort column ascending">
										操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="appInfo" items="${pageInfo.list }" varStatus="status">
									<tr role="row" class="odd">
										<td tabindex="0" class="sorting_1">${appInfo.softwarename}</td>
										<td>${appInfo.apkname }</td>
										<td>${appInfo.softwaresize }</td>
										<td>${appInfo.ptname }</td>
										<td>${appInfo.tname1 } -> ${appInfo.tname2 } -> ${appInfo.tname3 }</td>
										<td>${appInfo.sname }</td>
										<td>${appInfo.downloads }</td>
										<td>${appInfo.versionid }</td>
										<td>
										<button name="checkbutton" appid="${appInfo.id}" appversion="${appInfo.versionid}"   type="button" class="btn btn-default checkApp"
											data-toggle="tooltip" data-placement="top" title="" data-original-title="查看并审核APP">审核</button>
										</td>
									</tr>
								</c:forEach>
								<tr>
									<td colspan="9">
										<div>
											共${pageInfo.total}条  ${pageInfo.pageNum}/${pageInfo.pages}
											<nav>
												<ul class="pagination">
													<c:forEach end="${pageInfo.pages}" var="temp"  begin="1" step="1">
														<li><a href="javascript:page_nav(${temp})">${temp}</a></li>
													</c:forEach>
												</ul>
											</nav>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
		</div>
	</div>
</div>
</div>
<%@include file="common/footer.jsp"%>
	<script language="JavaScript">
        $(function () {  //加载事件
            //2.发送异步请求加载属性平台
            $.get("${pageContext.request.contextPath}/getAppPt",null,function(data){
                for(var i=0;i<data.length;i++){
                    //创建节点
                    var node=$("<option value="+data[i].valueid+">"+data[i].valuename+"</option>");
                    //追加节点
                    $("#queryFlatformId").append(node);
                }
                //设置下拉列的选中项
                $("#queryFlatformId").val(${condition.queryFlatformId});
            },"json");

            //3.加载一级分类
            $.get("${pageContext.request.contextPath}/getCatagoryByPid",null,function(data){
                for(var i=0;i<data.length;i++){
                    //创建节点
                    var node=$("<option value="+data[i].id+">"+data[i].categoryname+"</option>");
                    //追加节点
                    $("#queryCategoryLevel1").append(node);
                }
                //设置下拉列的选中项
                $("#queryCategoryLevel1").val(${condition.queryCategoryLevel1});
                //加载该选中项的子类
                loadTwoType();

            },"json");

            //4.触发一级分类的下拉列表的改变事件，加载二级
            $("#queryCategoryLevel1").change(loadTwoType);
            //加载二级分类
            function loadTwoType(){
                //获取一级下拉列表的值
                var val=$("#queryCategoryLevel1").val();
                if(val!="")
                {
                    $("#queryCategoryLevel2>option:gt(0)").remove(); //清除项
                    $.get("${pageContext.request.contextPath}/getCatagoryByPid",{"id":val},function(data){
                        for(var i=0;i<data.length;i++){
                            //创建节点
                            var node=$("<option value="+data[i].id+">"+data[i].categoryname+"</option>");
                            //追加节点
                            $("#queryCategoryLevel2").append(node);
                        }
                        //设置下拉列的选中项
                        $("#queryCategoryLevel2").val(${condition.queryCategoryLevel2});
                        //加载该选中项的子类
                        loadThreeType();
                    },"json");
                }
            }

            //4.触发二级分类的下拉列表的改变事件，加载三级
            $("#queryCategoryLevel2").change(loadThreeType);
            function loadThreeType(){
                //获取一级下拉列表的值
                var val=$("#queryCategoryLevel2").val();
                if(val!="")
                {
                    $("#queryCategoryLevel3>option:gt(0)").remove(); //清除项
                    $.get("${pageContext.request.contextPath}/getCatagoryByPid",{"id":val},function(data){
                        for(var i=0;i<data.length;i++){
                            //创建节点
                            var node=$("<option value="+data[i].id+">"+data[i].categoryname+"</option>");
                            //追加节点
                            $("#queryCategoryLevel3").append(node);
                        }
                        //设置下拉列的选中项
                        $("#queryCategoryLevel3").val(${condition.queryCategoryLevel3});
                    },"json");
                }
            }
        });

        //分页导航
        function page_nav(pageNum){
            //1.设置表单的页码
            $("#setPage").val(pageNum);
            //2.提交表单
            $("#form1").submit();
        }

	</script>