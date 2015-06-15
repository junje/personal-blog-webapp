<!DOCTYPE html>
<html>
<head>
<#include "../common/head.ftl">
<script type="text/javascript" src="${contextPath}/resources/js/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#submitButton").click(function(){
		alert(tinyMCE.activeEditor.getContent());
	});
    tinymce.init({
        selector: "textarea",
        language: "zh_CN",
        width: 900,
        height: 400,
        setup: function(editor) {
            editor.addButton('example',
            {
                title: 'My title',
                onclick: function() {
                    editor.windowManager.open({
                        title: "上传图片",
                        url: "${contextPath}/resources/js/tinymce/file/upload_image.html",
                        width: 320,
                        height: 70
                    });
                }
            });
        },
        plugins: [
            "advlist autolink lists link image charmap print preview anchor",
            "searchreplace visualblocks code fullscreen",
            "insertdatetime media table contextmenu paste"
        ],
        toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | code | example"
    });
});
</script>
</head>
<body>
<#include "../common/header.ftl">
<article>
    <textarea style="width:100%"></textarea>
    <input class="button" style="margin:10px 0px;" id="submitButton" type="button" value="保存"/>
</article>
<#include "../common/footer.ftl">
</body>
</html>