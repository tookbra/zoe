/* global hexo */

'use strict';

const path = require('path');

// Add comment
hexo.extend.filter.register('theme_inject', injects => {
  let theme = hexo.theme.config;
  if (!theme.gitalk.enable) return;

  injects.comment.raw('gitalk', '<div class="comments"><div class="row"><div class="col s12 m12 l9 card"><div id="gitalk-container"></div></div></div></div>', {}, {cache: true});

  injects.bodyEnd.file('gitalk', path.join(hexo.theme_dir, 'layout/_third-party/comments/gitalk.swig'));

});
