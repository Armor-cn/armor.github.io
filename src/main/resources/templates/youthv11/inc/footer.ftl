<footer class="footer">
    <div class="container">
        <div class="footer-row">
            <nav class="footer-nav">
                <a class="footer-nav-item footer-nav-logo" href="${base}/">
                    <img src="<@resource src=options['site_logo']/>" alt="mblog"/>
                </a>
                <span class="footer-nav-item">${options['site_copyright']}</span>
                <span class="footer-nav-item">${options['site_icp']}</span>
            </nav>
            <div class="gh-foot-min-back hidden-xs hidden-sm">
                <!-- 请保留此处标识-->
                <span class="footer-nav-item">Powered by <a href="https://github.com/demonarmor/demonarmor.github.io" target="_blank">Armor</a></span>
            </div>
        </div>
    </div>
</footer>

<a href="#" class="site-scroll-top">
    <i class="icon-arrow-up"></i>
</a>

<script type="text/javascript">
    seajs.use('main', function (main) {
        main.init();
    });
</script>
<script src="${base}/theme/youthv11/dist/js/swiper.min.js"></script>
<script src="${base}/theme/youthv11/dist/wow/js/wow.min.js"></script>
<script src="${base}/theme/youthv11/dist/js/youth.js"></script>