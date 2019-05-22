---
title: "測試頁"
tags: ["Markdown", "Hugo"]
date: 2019-05-22
draft: false
---

這篇文章集中說明本人博客主題所支持的 Markdown 語法和 Hugo Shortcodes 插件，你也可以在這裡預覽到他們的樣子。如果你不喜歡某些部分的樣式，可以去修改 `content.scss` 和 `shortcodes.scss` 這兩個文件。預告一下，我所用的這個名為 `Nuo` 的 `Hugo` 也將於近期發布，敬請期待。

<!--more-->

## 1. 标题

# H1
## H2
### H3
#### H4
##### H5
###### H6

## 2. 段落

使用單引號 `*` 或者單下劃線 `_` 標記 *斜體強調* 或者 _斜體強調_

使用兩個引號 `**` 或者兩個下劃線 `__` 標記 **加粗強調** 或者 __加粗強調__

引號和下劃線可疊加使用 → **只是加粗 _斜體並加粗_**

使用兩個波浪線 `~~` 標記 ~~已刪除文字~~

插入文字暫無 `Markdown` 標記，直接使用 `HTML` 標籤 `<ins>` 標記 <ins>插入文字</ins>

行內代碼使用反引號標記 → `print("hello world")`

上標 X<sup>2</sup> / 下標 X<sub>2</sub>

按鍵 <kbd>Ctrl</kbd>

外鏈 [chekun's blog](https://chekun.me)

頁面內段落 [圖片](#section-07)

*注意：你可以通過 `{#section-id}` 方式自定義段落錨點*

參考資料 <sup>[[1]](#ref01)</sup><sup>[[2]](#ref02)</sup>

數字引用 [編號為 1 的鏈接](1)

## 3. 列表

以下的無序、有序和任務列表均支持二級嵌套，不建議使用二級以上嵌套。

### 3.1 無序列表

* 無序列表
  - 嵌套的無序列表
  - 嵌套的無序列表
* 無序列表
  1. 嵌套的有序列表
  2. 嵌套的有序列表
* 無序列表

### 3.2 有序列表

1. 有序列表
  1. 嵌套的有序列表
  2. 嵌套的有序列表
2. 有序列表
  - 嵌套的無序列表
  - 嵌套的無序列表
3. 有序列表

### 3.3 定義列表

CSS
: 層疊樣式表

### 3.4 任務列表

- [ ] Cmd Markdown 開發
  - [ ] 改進 Cmd 渲染算法，使用局部渲染技術提高渲染效率
  - [ ] 支持以 PDF 格式導出文稿
  - [x] 新增Todo列表功能 [語法參考](https://github.com/blog/1375-task-lists-in-gfm-issues-pulls-comments)
  - [x] 改進 LaTex 功能
  - [x] 修復 LaTex 公式渲染問題
  - [x] 新增 LaTex 公式編號功能 [語法參考](http://docs.mathjax.org/en/latest/tex.html#tex-eq-numbers)
- [ ] 七月旅行準備
  - [ ] 準備郵輪上需要攜帶的物品
  - [ ] 瀏覽日本免稅店的物品
  - [x] 購買藍寶石公主號七月一日的船票

## 4. 引用

> 野火燒不盡，春風吹又生。
>
> <cite>-- 白居易《賦得古原草送別》</cite>

## 5. 代碼

以本站的一段 `JavaScript` 代碼做演示。

```javascript
// Initialize video.js player
if (document.getElementById('my-player') !== null) {
  /* eslint-disable no-undef */
  videojs('#my-player', {
    aspectRatio: '16:9',
    fluid: true,
  });
}
```

## 6. 分割線

---

中間能寫字的分割線，如果你修改了分割線中字的內容，請配合修改 `CSS` 樣式。

## 7. 圖片 {#section-07}

不帶標題的圖片，如下圖👇

![這是一隻梅花鹿](/media/posts/hugo-nuo-post-preview/01.jpg)

帶標題的圖片（zoomable），如下圖👇

## 8. 表格

使用 `Markdown` 畫的表格，如下表👇

| Tables        |      Are      |  Cool |
| :------------ | :-----------: | ----: |
| col 3 is      | right-aligned | $1600 |
| col 2 is      |   centered    |   $12 |
| zebra stripes |   are neat    |    $1 |

使用 `HTML` 畫的表格，如下表👇

*注意：下表疊加應用了 `is-centered` `is-striped` `is-bordered` `is-narrow` 四種表格樣式。 *

<table class="is-centered is-striped is-bordered is-narrow">
  <tr>
    <th rowspan="2">值班人員</th>
    <th>星期一</th>
    <th>星期二</th>
    <th>星期三</th>
  </tr>
  <tr>
    <td>李強</td>
    <td>張明</td>
    <td>王平</td>
  </tr>
</table>

## 9. 數學公式

主題使用了 [MathJax](https://www.mathjax.org/) 開源庫來實現對數學公式的支持，使用 `$$` 標記。

<div>$$
\left\{
\begin{aligned}
N & = pq \\
\varphi(n) & = (p-1)(q-1)\\
\end{aligned}
\right.
\Rightarrow
N - \varphi(n) + 1 = p + q
$$</div>

## 10. JSFiddle

引入 [JSFiddle](https://jsfiddle.net/) 網站的代碼範例，在主題目錄 `layouts/shortcodes` 文件夾下的 `jsfiddle.html` 對該標籤進行定義。

{{% jsfiddle "laozhu/L479wueo" "html,css,result" %}}

## 11. Codepen

引入 [Code Pen](https://codepen.io/) 網站的代碼演示，在主題目錄 `layouts/shortcodes` 文件夾下的 `codepen.html` 對該標籤進行定義。

{{% codepen "RoaWdE" "🐍 Snake Rush" "laozhu" "Ritchie Zhu" "600" %}}

## 12. 聲享 PPT

引入 [聲享](https://ppt.baomitu.com/) PPT 演示文稿，在主題目錄 `layouts/shortcodes` 文件夾下的 `shengxiang.html` 對該標籤進行定義。

{{% shengxiang "a8a49a00" %}}

## 13. 本地視頻

主題使用了[video.js](http://videojs.com/) 播放視頻文件，你還可以自己定義視頻的封面，在主題目錄`layouts/shortcodes` 文件夾下的`video.html` 對該標籤進行定義。

## 14. 網易云音樂

主題文章中可以輕鬆插入[網易云音樂](https://music.163.com/) 的指定音樂，你可以根據需要將音樂設置為自動播放，在主題目錄`layouts/shortcodes` 文件夾下的`music.html` 對該標籤進行定義。

**注意：由於版權問題，網易已經禁止外站分享版權音樂，該 shortcode 已經無法正常使用。 **

## 15. Gist 代碼片段

除了本地的代碼片段，主題中可使用 [GitHub](https://github.com/) 的 [Gist](https://gist.github.com/) 服務輕鬆插入代碼片段。

{{% gist "laozhu" "8285349" %}}

## 16. Tweet

由於不明原因可能無法訪問。

## 17. YouTube

由於不明原因可能無法播放。

{{% youtube "w7Ft2ymGmfc" %}}

## 18. Instagram

由於不明原因可能無法訪問。

## 文章更新

### [2017年9月8日](#inline-mathjax)

支持行內的數學公式，使用標記 `$` 包裹公式，如下：

When `\(a \ne 0\)`, there are two solutions to `$ax^2 + bx + c = 0$` and they are
<div>$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$</div>

## 參考資料

1. <p id="ref01">[Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)</p>
2. <p id="ref02">[Markdown 語法手冊](https://www.zybuluo.com/EncyKe/note/120103)</p>