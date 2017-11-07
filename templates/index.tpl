{include file ="head.tpl"}
<body>
    {include file ="nav.tpl"}
    <article>
        <button id="refresh" type="button" class="btn btn-default btn-xs pull-right" aria-label="Refresh">
            <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span> </button>

        <div class="js-carga">


            {include file ="index/content.tpl"}

        </div>
    </article>

    {include file ="footer.tpl"}
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.0/mustache.js"></script>
    <script src="js/nba_js.js" charset="utf-8"></script>
</body>
</html>
