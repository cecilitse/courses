// Vendor
import { jQuery, $ } from 'jquery';
window.$ = $;
window.jQuery = jQuery;

import Reveal from 'reveal.js';
window.Reveal = Reveal; // really?

// Initialization
Reveal.initialize({
  history: true,
  dependencies: [
    {
      src: "/assets/javascripts/reveal_plugins.bundle.js",
      callback: function() {
        hljs.initHighlightingOnLoad();
      }
    }
  ]
});

if (window.location.search.match(/print-pdf/gi)) {
  var link  = document.createElement('link');
  link.rel  = 'stylesheet';
  link.type = 'text/css';
  link.href = "/assets/stylesheets/presentation/print.css";

  document.getElementsByTagName('head')[0].appendChild(link);
}
