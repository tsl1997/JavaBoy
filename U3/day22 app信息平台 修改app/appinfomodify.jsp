<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>修改APP基础信息 <i class="fa fa-user"></i><small>${devUserSession.devName}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
        <form class="form-horizontal form-label-left" action="appinfomodifysave" method="post" enctype="multipart/form-data">
          <input type="hidden" name="id" id="id" value="${appInfo.id}">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">软件名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="softwareName" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" 
               name="softwarename" value="${appInfo.softwarename}" required="required"
               placeholder="请输入软件名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APK名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="APKName" type="text" class="form-control col-md-7 col-xs-12" 
              name="apkname" value="${appInfo.apkname}" readonly="readonly">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">支持ROM <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="supportROM" class="form-control col-md-7 col-xs-12" 
              	name="supportrom" value="${appInfo.supportrom}" required="required"
              	data-validate-length-range="20" data-validate-words="1" 
              	placeholder="请输入支持的ROM" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">界面语言 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="interfaceLanguage" class="form-control col-md-7 col-xs-12" 
              data-validate-length-range="20" data-validate-words="1"  required="required"
              name="interfacelanguage" value="${appInfo.interfacelanguage}"
              placeholder="请输入软件支持的界面语言" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">软件大小 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="softwareSize" name="softwaresize" value="${appInfo.softwaresize}" required="required"
              data-validate-minmax="10,500"  placeholder="请输入软件大小，单位为Mb" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">下载次数 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="downloads" name="downloads" value="${appInfo.downloads}" required="required"
              data-validate-minmax="10,500"  placeholder="请输入下载次数" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">所属平台 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="flatformid" id="flatformId" class="form-control" required="required">
                <option value="">请选择</option>
              </select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">一级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="categorylevel1" id="categoryLevel1" class="form-control"  required="required">
                <option value="">请选择</option>
              </select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">二级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="categorylevel2" id="categoryLevel2" class="form-control"  required="required">
                <option value="">请选择</option>
              </select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">三级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="categorylevel3" id="categoryLevel3" class="form-control"  required="required">
                <option value="">请选择</option>
              </select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APP状态 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<input id="statusName" type="text" class="form-control col-md-7 col-xs-12" 
              	name="statusName" value="${appInfo.sname}" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">应用简介 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="appInfo" name="appinfo" required="required"
              placeholder="请输入本软件的相关信息，本信息作为软件的详细信息进行软件的介绍。" class="form-control col-md-7 col-xs-12">${appInfo.appinfo}</textarea>
            </div>
          </div>
             <div class="item form-group">
               <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">LOGO图片 <span class="required">*</span>
               </label>
               <div class="col-md-6 col-sm-6 col-xs-12">
                 <img src="${appInfo.logopicpath}" height="100" width="80" />${appInfo.logopicpath}
                 <input type="file" class="form-control col-md-7 col-xs-12" name="a_logoPicPath"  required="required" id="a_logoPicPath"/>
                 ${fileUploadError }
               </div>
             </div>
          </div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" class="btn btn-primary" id="back">返回</button>
              <br/><br/>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="common/footer.jsp"%>
<script>
    $(function(){
        //加载平台
        $.get("${pageContext.request.contextPath}/getPt",null,function(data){
            //data表示服务器返回的数据
            for(var i=0;i<data.length;i++){
                var node="<option value="+data[i].valueid+">"+data[i].valuename+"</option>";
                $("#flatformId").append(node);  //添加子节点
            }
            //回显
            $("#flatformId").val(${appInfo.flatformid});
        },"json");

        //加载一级
        $.get("${pageContext.request.contextPath}/getCategory",null,function(data){
            for(var i=0;i<data.length;i++){
                var node="<option value="+data[i].id+">"+data[i].categoryname+"</option>";
                $("#categoryLevel1").append(node);  //添加子节点
            }
            //回显
            $("#categoryLevel1").val(${appInfo.categorylevel1});
            //加载二级
            loadTwoType();
        },"json");

        //加载二级:二级联动
        $("#categoryLevel1").change(loadTwoType);
        //加载二级分类
        function loadTwoType(){
            //获取分类的id
            var parentId=$("#categoryLevel1").val();
            //清空下拉列表中的选项
            $("#categoryLevel2>option:gt(0)").remove();
            $("#categoryLevel3>option:gt(0)").remove();
            if(parentId!="")
            {
                $.get("${pageContext.request.contextPath}/getCategory",{"parentId":parentId},function(data){
                    for(var i=0;i<data.length;i++){
                        var node="<option value="+data[i].id+">"+data[i].categoryname+"</option>";
                        $("#categoryLevel2").append(node);  //添加子节点
                    }

                    //选中
                    $("#categoryLevel2").val(${appInfo.categorylevel2});
                    //加载三级
                    loadThreeType();
                },"json");
            }
        }

        //加载三级
        $("#categoryLevel2").change(loadThreeType);
        //加载三级
        function loadThreeType() {
            //获取分类的id
            var parentId=$("#categoryLevel2").val();
            //清空下拉列表中的选项
            $("#categoryLevel3>option:gt(0)").remove();
            if(parentId!="")
            {
                $.get("${pageContext.request.contextPath}/getCategory",{"parentId":parentId},function(data){
                    for(var i=0;i<data.length;i++){
                        var node="<option value="+data[i].id+">"+data[i].categoryname+"</option>";
                        $("#categoryLevel3").append(node);  //添加子节点
                    }
                    //选中
                    $("#categoryLevel3").val(${appInfo.categorylevel3});
                },"json");
            }
        }

    });
</script>