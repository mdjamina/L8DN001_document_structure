/*
 * Plugin de gestion de template
 * */
function TemplateManager(url) {
    this.defined = false;
    this.prefix = 'tpl';

    if (this.defined == false) {
        this.url = url;
        this.loadedTpl = [];
        this.defined = true;
    }
}
/*
 * Récupere les template demander (array) et les ajoute dynamiquement au document
 * */
TemplateManager.prototype.get = function (params) {
    var self = this;

    $.ajax({
        url: self.url,
        data: {
            'viewAdapter': params
        },
        success: function (json) {
            $.each(json, function (key, value) {
                var tpl = $('<script><\/script>').attr('type', 'text/x-jquery-tmpl')
                							     .attr('id', self.prefix + key)
                							     .html(value)
                							     .appendTo('body');

                self.loadedTpl[self.prefix + key] = tpl;
            });

        }
    });
};

/*
 * Récupere la valeur du template demander ou retourne false si celui si n'éxiste pas
 * */
TemplateManager.prototype.load = function (templateName) {
    return (this.loadedTpl[this.prefix + templateName]) ? this.loadedTpl[this.prefix + templateName] : false;
};