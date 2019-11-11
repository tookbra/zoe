/* global hexo */

'use strict';

const colorArr = ['#F9EBEA', '#F5EEF8', '#D5F5E3', '#E8F8F5', '#FEF9E7',
  '#F8F9F9', '#82E0AA', '#D7BDE2', '#A3E4D7', '#85C1E9', '#F8C471', '#F9E79F', '#FFF'];
const colorCount = colorArr.length;
const hashCode = function (str) {
  if (!str && str.length === 0) {
    return 0;
  }
  let hash = 0;
  for (let i = 0, len = str.length; i < len; i++) {
    hash = ((hash << 5) - hash) + str.charCodeAt(i);
    hash |= 0;
  }
  return hash;
};
let i = 0;

hexo.extend.helper.register('zoe_tag', function(path, name, count) {
  console.log(path);
  i++;
  const color = i >= colorArr[i - 1];
  return `<a href="${path}" title="${name}">
                    <span class="chip center-align waves-effect waves-light" style="background-color: ${color}">${name}
                        <span class="tag-length">${count}</span>
                    </span>
                </a>`;
});

