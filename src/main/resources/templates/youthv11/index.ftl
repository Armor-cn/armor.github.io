<#include "/youthv11/inc/layout.ftl"/>
<#assign topId = 1 />
<@layout>
<div class="row">
    <div class="col-xs-12 col-md-12 side-left side-top hidden-xs">
        <!-- top -->
        <div class="row">
    <@contents channelId=topId size=8>
        <#list results.content as row>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-3">
                <div class="block">
                    <a class="block-thumbnail" href="${base}/post/${row.id}">
                        <div class="thumbnail-overlay"></div>
                        <span class="button-zoom">
                            <img src="${base}/dist/images/image-overlay-view-icon.png">
                        </span>

                        <#if row.thumbnail?? && row.thumbnail?length gt 0>
                            <img src="<@resource src=row.thumbnail/>">
                        <#else>
                            <img src="${base}/dist/images/spinner-overlay.png">
                        </#if>
                    </a>
                    <div class="block-contents">
                        <p class="tit">${row.title?html}
                        </p>
                    </div>
                </div>
            </div>
        </#list>
    </@contents>
        </div>
        <!-- top/end -->
    </div>
    <div class="col-xs-12 col-md-9 side-left side-top">
        <div class="posts widget">

            <div class="panel-heading">
                <h3 class="panel-title"><span>小众阅读</span></h3>
            </div>

            <@contents pageNo=pageNo size=12>
                <ul class="posts-list">
                <#include "/youthv11/inc/posts_item.ftl"/>
                <#list results.content as row>
                 <div class="wow fadeIn" data-wow-delay="0.1s">
                    <@posts_item row/>
                 </div>
                </#list>
                <#if  results.content?size == 0>
                    <li class="content">
                        <div class="content-box posts-aside">
                            <div class="posts-item">该目录下还没有内容!</div>
                        </div>
                    </li>
                </#if>
                </ul>
            </@contents>
        </div>
        <div class="text-center">
            <!-- Pager -->
            <@utils.pager request.requestURI!"", results, 5/>
        </div>
    </div>
    <div class="col-xs-12 col-md-3 side-right hidden-xs hidden-sm">
        <#include "/youthv11/inc/right.ftl"/>
    </div>
</div>
</@layout>