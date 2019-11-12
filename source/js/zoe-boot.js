/* global Zoe */

Zoe.boot = {};

Zoe.boot.registerEvents = function() {
  Zoe.utils.registerScrollPercent();
};
Zoe.boot.refresh = function() {

  /**
   * Register JS handlers by condition option.
   * Need to add config option in Front-End at 'layout/_partials/head.swig' file.
   */
  Zoe.utils.registerSidebarTOC();
};

window.addEventListener('DOMContentLoaded', () => {
  Zoe.boot.registerEvents();
  Zoe.boot.refresh();
});
