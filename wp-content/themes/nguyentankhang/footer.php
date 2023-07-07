    <section class="footer">
        <div class="container border-bottom">
            <div class="row">
                <div class="col-md-3">
               
                        <?php get_sidebar('footer1');?>
                        
                </div>
                <div class="col-md-3">
                <?php wp_nav_menu(array('theme_location' => 'footermenu'));?>
                </div>
                <div class="col-md-3">
                    
                </div>
                <div class="col-md-3">
                    
                    <?php get_sidebar('footer2');?>
                </div>
            </div>
        </div>
    </section>
    <section class="copyright">
        <div class="container text-center">
           <p>Thiết kế bởi: Khang sama</p>
        </div>
    </section>


    <?php wp_footer(); ?>
</body>
</html>


