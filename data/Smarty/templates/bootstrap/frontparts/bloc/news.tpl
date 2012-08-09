<!--{*
* This file is part of EC-CUBE
*
* Copyright(c) 2000-2012 LOCKON CO.,LTD. All Rights Reserved.
*
* http://www.lockon.co.jp/
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public License
* as published by the Free Software Foundation; either version 2
* of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
*}-->

<section class="bloc-body" id="news-area">
  <header>
    <h1>新着情報</h1>
  </header>
  <div id="news-contents" class="bloc-article">
    <!--{section name=data loop=$arrNews}-->
    <!--{assign var="date_array" value="-"|explode:$arrNews[data].news_date_disp}-->
    <article class="news-post">
      <section class="row-fluid news-post-header">
        <h1 class="span8">
          <!--{if $arrNews[data].news_url}-->
          <a href="<!--{$arrNews[data].news_url}-->" <!--{if $arrNews[data].link_method eq "2"}--> target="_blank"<!--{/if}-->>
            <!--{$arrNews[data].news_title|h|nl2br}-->
          </a>
          <!--{else}-->
          <!--{$arrNews[data].news_title|h|nl2br}-->
          <!--{/if}-->
        </h1>
        <time class="span4" datetime="<!--{$date_array[0]}-->-<!--{$date_array[1]}-->-<!--{$date_array[2]}-->"><!--{$date_array[0]}-->年<!--{$date_array[1]}-->月<!--{$date_array[2]}-->日</time>
      </section>
      <section class="news-post-content">
        <!--{$arrNews[data].news_comment|h|nl2br}-->
      </section>
    </article>
    <!--{/section}-->
  </div>
  <footer class="btn-group">
    <!--{assign var=rss_url value=$smarty.const.HTTP_URL|cat:"rss/"|cat:$smarty.const.DIR_INDEX_PATH}-->
    <button class="btn btn-mini btn-warning">RSS登録</button>
    <button class="btn btn-mini btn-warning dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
    <span class="help-inline ">RSSリーダーに最新情報を配信します。</span>
    <ul class="dropdown-menu">
      <li><a href="http://fusion.google.com/add?source=atgs&feedurl=<!--{$rss_url}-->">Google Reader</a></li>
      <li><a href="http://reader.livedoor.com/subscribe/<!--{$rss_url}-->">livedoor Reader</a></li>
      <li><a href="http://add.my.yahoo.co.jp/rss?url=<!--{$rss_url}-->">My Yahoo!</a></li>
      <li><a href="<!--{$rss_url}-->">RSS</a></li>
    </ul>
  </footer>
</section>
