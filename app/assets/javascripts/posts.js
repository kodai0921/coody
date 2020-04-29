document.addEventListener('DOMContentLoaded', function() {
  new MobileMenu();

})


class MobileMenu {
  constructor() {
    this.DOM = {};
    this.DOM.btn = document.querySelector('.menu-box');
    this.DOM.cover = document.querySelector('.cover');
    this.DOM.container = document.querySelector('#global-container');
    this.eventType = this._getEventType();
    this._addEvent();

  }

  _getEventType() {
    return window.ontouchstart ? 'touchstart' : 'click';
  }

  _toggle() {
    this.DOM.container.classList.toggle('menu-open');
  }

  _addEvent() {
    this.DOM.btn.addEventListener(this.eventType, this._toggle.bind(this));
    this.DOM.cover.addEventListener(this.eventType, this._toggle.bind(this));
  }
}

