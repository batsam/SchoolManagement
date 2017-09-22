<footer class="app-footer">
    <div class="site-footer-right">
        <?php if(rand(1,100) == 100): ?>
            <i class="voyager-rum-1"></i> Made with rum and even more rum
        <?php else: ?>
            Made with <i class="voyager-heart"></i> by <a href="https://github.com/batsam" target="_blank">Batsam</a>
        <?php endif; ?>
        <?php  $version = Voyager::getVersion();  ?>
        <!-- <?php if(!empty($version)): ?>
            - <?php echo e($version); ?>

        <?php endif; ?> -->
    </div>
</footer>
