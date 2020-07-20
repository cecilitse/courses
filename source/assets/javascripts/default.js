// Vendor
import { jQuery, $ } from 'jquery';
window.$ = $;
window.jQuery = jQuery;

import 'foundation-sites';

// Components
import './program/sticky_footer';

// Email protection
!function(){try{var a,b,c,d,g=document.getElementsByTagName("a"); for(c=0;g.length-c;c++)try{b=g[c].getAttribute("href"),b&&b.indexOf("#email-protection-")>-1&&b.length>19&&(a="",d=19+b.indexOf("#email-protection-"),b.length>d&&(a=b.substr(18).replace(/[a-zA-Z]/g,function(a){return String.fromCharCode(("Z">=a?90:122)>=(a=a.charCodeAt(0)+13)?a:a-26)})),(g[c].getAttribute("href") == g[c].innerHTML ? g[c].innerHTML = a : g[c].innerHTML = g[c].innerHTML),g[c].setAttribute("href","mailto:"+a))}catch(h){}}catch(h){}}();
