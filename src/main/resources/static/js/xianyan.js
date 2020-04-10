// $(function () {
//     $('[data-toggle="tooltip"]').tooltip()
// })

/**
 * 打开二级评论
 */
function secComment(e) {
    const id = e.getAttribute("data-id");
    const comments = $("#comment-" + id);
    if (!comments.hasClass("in")) {
        $.getJSON( "/comment/" + id, function( data ) {
            // const commentBody = $("#comment-body-" + id);
            // const items = [];
            $.each( data.data, function( key, val ) {
                // console.log(val)
                const container = $( "<div>", {
                    "class": "panel-heading xianyan-menu",
                })
                comments.prepend(container);
                const likeCount = $( "<span>", {
                    "class": "glyphicon glyphicon-thumbs-up icon text_desc",
                    html: '&nbsp;点赞  &nbsp'
                })
                container.prepend(likeCount);
                const gmtCreate = $( "<span>", {
                    "class": "icon text_desc",
                    "style": "float: right",
                    html: moment(val.gmtCreate).format('YYYY-MM-DD HH:mm')
                })
                container.prepend(gmtCreate);
                const content = $( "<div>", {
                    "class": "panel-body panel-title xianyan-panel-body",
                    html: val.content
                })
                container.prepend(content);
                const userName = $( "<div>", {
                    "class": "media-body xianyan-media-body text_desc media-middle",
                    "style": "font-size: large",
                    html: val.user.name,
                })
                container.prepend(userName);
                const userAvatarUrl = $( "<img>", {
                    "class": "xianyan-media-object  img-rounded",
                    "style": "float: left; margin: 18px",
                    "src": val.user.avatarUrl,
                })
                container.prepend(userAvatarUrl);
            });
            comments.addClass("in");
            e.classList.add("active");
        });

    } else {
        comments.removeClass("in");
        e.classList.remove("active");
    }
}

function comment2Target(targetId, content, type) {
    if (!content) {
        alert("评论不能为空")
        return;
    }
    $.ajax({
        type: "post",
        url: "/comment",
        contentType: "application/json",
        data: JSON.stringify({
            "parentId": targetId,
            "content": content,
            "type":type
        }),
        success: function(response) {
            if (response.code == 200) {
                $(window).scrollTop(0);
                location.reload();
                // $("#content_section").hide();
            } else {
                if (response.code == 2003) {
                    const isAccepted = confirm(response.message);
                    if (isAccepted) {
                        window.open("https://github.com/login/oauth/authorize?client_id=655761913199fe5937ee&redirect_uri=http://localhost:8080/callback&state=1");
                        window.localStorage.setItem("closable", true);
                    }
                } else {
                    alert(response.message);
                }
            }
        },
        dataType: "json"
    });
}

function comment(e) {
    const commentId = e.getAttribute("data-id");
    const content = $("#input-" + commentId).val();
    comment2Target(commentId, content, 2);
}
/**
 * 评论回复功能
 */
function post() {
    const questionId = $("#question_id").val();
    const commentContent = $("#comment_content").val();
    comment2Target(questionId, commentContent, 1)
}

function selectTag(e) {
    const value = e.getAttribute("data-tag");
    const previous = $("#tag").val();
    if (previous.indexOf(value) == -1) {
        if (previous) {
            $("#tag").val(previous + ',' + value);
        } else {
            $("#tag").val(value);
        }
    }
}