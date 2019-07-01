<#macro posts_item row escape=true>
<li class="content">
    <#if row.thumbnail?? && row.thumbnail?length gt 0>
        <div class="content-box">
            <div class="catWrap hidden-xs"><div class="catBox"><span class="i">#</span><@utils.showChannel row/></div></div>
            <div class="posts-item-img">
                <a href="${base}/post/${row.id}">
                    <div class="overlay"></div>
                    <img class="lazy thumbnail" src="<@resource src=row.thumbnail/>" style="display: inline-block;">
                </a>
            </div>
            <div class="posts-item posts-item-gallery">
                <h2>
                    <a href="${base}/post/${row.id}"><#if escape>${row.title?html}<#else>${row.title}</#if></a>
                </h2>
                <div class="item-text hidden-xs">${row.summary}</div>
                <div class="item-info">
                    <ul>
                        <li class="post-author hidden-xs">
                            <div class="avatar">
                                <img src="<@resource src=row.author.avatar + '?t=' + .now?time/>" class="lazy avatar avatar-50 photo" height="50" width="50">
                            </div>
                            <a href="${base}/users/${row.author.id}" target="_blank">${row.author.name}</a>
                        </li>
                        <li class="ico-cat"></li>
                        <li class="ico-time"><i class="icon-clock"></i>${timeAgo(row.created)}</li>
                        <li><i class="icon-eye"></i>${row.views}</li>
                        <li><i class="icon-bubbles"></i>${row.comments}</li>
                        <li><i class="icon-star"></i>${row.favors}</li>
                    </ul>
                </div>
            </div>
        </div>
    <#else>
        <div class="content-box posts-aside">
            <div class="catWrap hidden-xs"><div class="catBox"><span class="i">#</span><@utils.showChannel row/></div></div>
            <div class="posts-item">
                <div class="item-title">
                    <h2>
                        <a href="${base}/post/${row.id}"><#if escape>${row.title?html}<#else>${row.title}</#if>
                        </a>
                    </h2>
                </div>
                <div class="item-text">${row.summary}</div>
                <div class="item-info">
                    <ul>
                        <li class="post-author hidden-xs">
                            <div class="avatar">
                                <img src="<@resource src=row.author.avatar + '?t=' + .now?time/>" class="lazy avatar avatar-50 photo" height="50" width="50">
                            </div>
                            <a href="${base}/users/${row.author.id}" target="_blank">${row.author.name}</a>
                        </li>
                        <li class="ico-cat"></li>
                        <li class="ico-time"><i class="icon-clock"></i>${timeAgo(row.created)}</li>
                        <li><i class="icon-eye"></i>${row.views}</li>
                        <li><i class="icon-bubbles"></i>${row.comments}</li>
                        <li><i class="icon-star"></i>${row.favors}</li>
                    </ul>
                </div>
            </div>
        </div>
    </#if>
</li>
</#macro>