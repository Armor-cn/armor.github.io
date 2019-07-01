<div class="panel panel-default widget">
    <div class="panel-heading">
        <h3 class="panel-title"><span>热门文章</span></h3>
    </div>
    <div class="panel-body panel-spacing">
		<@sidebar method="hottest_posts">
            <ol class="posts-list list-space-sm list-unstyled ">
			<#list results as row>
                <li>
                      <article class="entry-thumb post post--horizontal post--horizontal-xxs">
                          <div class="post_text">
                              <h3>
                                  <a href="${base}/post/${row.id}" data-toggle="tooltip" data-placement="left" title="${row.favors} 次收藏">${row.title}</a>
                              </h3>
                              <div class="item-count">${timeAgo(row.created)}<span class="counter-value">${row.views}</span> 浏览</div>
                          </div>
                      </article>
                </li>
            </#list>
            </ol>
        </@sidebar>
    </div>
</div>
<@controls name="comment">
<div class="panel panel-default widget">
    <div class="panel-heading">
        <h3 class="panel-title"><span>最新评论</span></h3>
    </div>
    <div class="panel-body panel-spacing">
		<@sidebar method="latest_comments">
            <ul class="widget-content-list">
				<#list results as row>
                    <div class="widget-content">
                        <li class="comment">
                            <div class="comment-title" title="3小时">
                                <div class="comment-author"><img src="<@resource src=row.author.avatar + '?t=' + .now?time/>">
                                    <span href="${base}/users/${row.author.id}" target="_blank">${row.author.name}</span>
                                </div>
                            </div>
                            <div class="comment-content">
                                <a href="${base}/post/${row.postId}">${row.content}</a>
                            </div>
                        </li>
                    </div>
                </#list>
            </ul>
        </@sidebar>
    </div>
</div>
</@controls>
<div class="panel panel-default widget">
    <div class="panel-heading">
        <h3 class="panel-title"><span>最新发布</span></h3>
    </div>
    <div class="panel-body panel-spacings">
        <div class="">
        <@sidebar method="latest_posts" size=3>
            <ol class="posts-list list-unstyleds ">
			<#list results as row>
                <li>
                  <#if row.thumbnail?? && row.thumbnail?length gt 0>
                      <article class="entry-thumbs post post--horizontal post--horizontal-xxss">
                          <div class=" post_thumbs min-height-100">
                              <a href="${base}/post/${row.id}">
                                  <img class="lazy thumbnail" src="<@resource src=row.thumbnail/>" style="display: inline-block;">
                              </a>
                          </div>
                          <div class="post_text_s">
                              <h3>
                                  <a href="${base}/post/${row.id}" data-toggle="tooltip" data-placement="top" title="${row.favors} 次收藏">${row.title}</a>
                              </h3>
                          </div>

                      </article>
                  <#else>
             <div class="content_box_s posts-aside">
                 <div class="posts-item">
                     <div class="post_text_s post_text_h3">
                         <h3 class="post_thumbs_i">
                             <a href="${base}/post/${row.id}"><#if escape>${row.title?html}<#else>${row.title}</#if>
                             </a>
                         </h3>
                     </div>
                 </div>
             </div>
                  </#if>
                </li>
            </#list>
            </ol>
        </@sidebar>
        </div>
    </div>
</div>
