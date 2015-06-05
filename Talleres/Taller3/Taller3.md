


<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>MetodosComputacionalesLaboratorio/Taller3.md at master · ComputoCienciasUniandes/MetodosComputacionalesLaboratorio · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="ComputoCienciasUniandes/MetodosComputacionalesLaboratorio" name="twitter:title" /><meta content="MetodosComputacionalesLaboratorio - Material del Laboratorio de Métodos Computacionales de Uniandes" name="twitter:description" /><meta content="https://avatars2.githubusercontent.com/u/12000175?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars2.githubusercontent.com/u/12000175?v=3&amp;s=400" property="og:image" /><meta content="ComputoCienciasUniandes/MetodosComputacionalesLaboratorio" property="og:title" /><meta content="https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio" property="og:url" /><meta content="MetodosComputacionalesLaboratorio - Material del Laboratorio de Métodos Computacionales de Uniandes" property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    
    <meta name="pjax-timeout" content="1000">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="9DFD118A:3922:1A12EC7:5571A646" name="octolytics-dimension-request_id" />
    
    <meta content="Rails, view, blob#show" name="analytics-event" />
    <meta class="js-ga-set" name="dimension1" content="Logged Out">
    <meta class="js-ga-set" name="dimension2" content="Header v3">
    <meta name="is-dotcom" content="true">
      <meta name="hostname" content="github.com">
    <meta name="user-login" content="">

    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="Gb/AfDaACZ+6euwEwOyg8LUr881S9sttXNO32ZvWvpG9g3oeKUEq17aYUg4EAJnKA5qfS66WTPF0HxLDwWnkLg==" name="csrf-token" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github/index-6967b378b26829cc5a2ea2ad4209ff0af50f2a65057962219dc9dcf8942683f0.css" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2/index-73bfe123ff406f4bf8959a28667410beaac1485e71c92d4725a3d7afc45fc4c5.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="b2ca4753a2f40f3bd3d3d6fd0fe8b32e">

      
  <meta name="description" content="MetodosComputacionalesLaboratorio - Material del Laboratorio de Métodos Computacionales de Uniandes">
  <meta name="go-import" content="github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio git https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio.git">

  <meta content="12000175" name="octolytics-dimension-user_id" /><meta content="ComputoCienciasUniandes" name="octolytics-dimension-user_login" /><meta content="16010771" name="octolytics-dimension-repository_id" /><meta content="ComputoCienciasUniandes/MetodosComputacionalesLaboratorio" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="16010771" name="octolytics-dimension-repository_network_root_id" /><meta content="ComputoCienciasUniandes/MetodosComputacionalesLaboratorio" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/commits/master.atom" rel="alternate" title="Recent Commits to MetodosComputacionalesLaboratorio:master" type="application/atom+xml">

  </head>


  <body class="logged_out  env-production  vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      


        
        <div class="header header-logged-out" role="banner">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions" role="navigation">
        <a class="btn btn-primary" href="/join" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
      <a class="btn" href="/login?return_to=%2FComputoCienciasUniandes%2FMetodosComputacionalesLaboratorio%2Fblob%2Fmaster%2F2015-V%2Factividades%2Ftalleres%2FTaller3%2FTaller3.md" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
    </div>

    <div class="site-search repo-scope js-site-search" role="search">
      <form accept-charset="UTF-8" action="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
    </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item">
            <a class="header-nav-link" href="/explore" data-ga-click="(Logged out) Header, go to explore, text:explore">Explore</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/features" data-ga-click="(Logged out) Header, go to features, text:features">Features</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://enterprise.github.com/" data-ga-click="(Logged out) Header, go to enterprise, text:enterprise">Enterprise</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="(Logged out) Header, go to blog, text:blog">Blog</a>
          </li>
      </ul>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">

        
<ul class="pagehead-actions">

  <li>
      <a href="/login?return_to=%2FComputoCienciasUniandes%2FMetodosComputacionalesLaboratorio"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <span class="octicon octicon-eye"></span>
    Watch
  </a>
  <a class="social-count" href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/watchers">
    8
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2FComputoCienciasUniandes%2FMetodosComputacionalesLaboratorio"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/stargazers">
      3
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2FComputoCienciasUniandes%2FMetodosComputacionalesLaboratorio"
        class="btn btn-sm btn-with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/network" class="social-count">
        7
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/ComputoCienciasUniandes" class="url fn" itemprop="url" rel="author"><span itemprop="title">ComputoCienciasUniandes</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio" data-pjax="#js-repo-pjax-container">MetodosComputacionalesLaboratorio</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /ComputoCienciasUniandes/MetodosComputacionalesLaboratorio">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="js-clone-url clone-url open"
  data-protocol-type="http">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="subversion">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options">You can clone with
  <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone" class="inline-form js-clone-selector-form " data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="mklbj/i0yGIgvJBSXPo2mUTZuimO4rz/xmAD5rPyzYQbI926DPJUkHaLRtVr2v9/8vXOB7LZyoN/iLYOxd0oXQ==" /></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form> or <form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone" class="inline-form js-clone-selector-form " data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="jKLYOLXgX5BVhSC1fobZd/HaEoOXvbB9/QqeCSbRhg/o3ffFOjHBXvWoDRR+c/xfBB4aBFmKwjE8rEOrhbMW/A==" /></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>




                <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/archive/master.zip"
                   class="btn btn-sm sidebar-button"
                   aria-label="Download the contents of ComputoCienciasUniandes/MetodosComputacionalesLaboratorio as a zip file"
                   title="Download the contents of ComputoCienciasUniandes/MetodosComputacionalesLaboratorio as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          

<a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/blob/6d0f32d414390b937916c75180c2885d667d4c6a/2015-V/actividades/talleres/Taller3/Taller3.md" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:97d2cf9a7a47ca14c92f6c03701ab394 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/blob/master/2015-V/actividades/talleres/Taller3/Taller3.md"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="btn-group right">
    <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/find/master"
          class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">MetodosComputacionalesLaboratorio</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/tree/master/2015-V" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">2015-V</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/tree/master/2015-V/actividades" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">actividades</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/tree/master/2015-V/actividades/talleres" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">talleres</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/tree/master/2015-V/actividades/talleres/Taller3" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">Taller3</span></a></span><span class="separator">/</span><strong class="final-path">Taller3.md</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="@juandlizarazo" class="avatar" height="24" src="https://avatars2.githubusercontent.com/u/8259615?v=3&amp;s=48" width="24" />
        <span class="author"><a href="/juandlizarazo" rel="contributor">juandlizarazo</a></span>
        <time datetime="2015-06-05T13:37:23Z" is="relative-time">Jun 5, 2015</time>
        <div class="commit-title">
            <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/commit/6d0f32d414390b937916c75180c2885d667d4c6a" class="message" data-pjax="true" title="Update Taller3.md">Update Taller3.md</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>1</strong>
           contributor
        </a>
      </p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="@juandlizarazo" height="24" src="https://avatars2.githubusercontent.com/u/8259615?v=3&amp;s=48" width="24" />
            <a href="/juandlizarazo">juandlizarazo</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
    <div class="file-actions">

      <div class="btn-group">
        <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/raw/master/2015-V/actividades/talleres/Taller3/Taller3.md" class="btn btn-sm " id="raw-url">Raw</a>
          <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/blame/master/2015-V/actividades/talleres/Taller3/Taller3.md" class="btn btn-sm js-update-url-with-hash">Blame</a>
        <a href="/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/commits/master/2015-V/actividades/talleres/Taller3/Taller3.md" class="btn btn-sm " rel="nofollow">History</a>
      </div>


          <button type="button" class="octicon-btn disabled tooltipped tooltipped-n" aria-label="You must be signed in to make or propose changes">
            <span class="octicon octicon-pencil"></span>
          </button>

        <button type="button" class="octicon-btn octicon-btn-danger disabled tooltipped tooltipped-n" aria-label="You must be signed in to make or propose changes">
          <span class="octicon octicon-trashcan"></span>
        </button>
    </div>

    <div class="file-info">
        20 lines (10 sloc)
        <span class="file-info-divider"></span>
      1.959 kB
    </div>
  </div>
    <div id="readme" class="blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="mainContentOfPage"><h1><a id="user-content-taller-3" class="anchor" href="#taller-3" aria-hidden="true"><span class="octicon octicon-link"></span></a>Taller 3</h1>

<p><em>Métodos Computacionales - Laboratorio</em></p>

<p>05-Jun-2015</p>

<p>Haga una copia de este archivo en su repositorio de GitHub en la carpeta /MC/Talleres/Taller3/. No olvide al final hacer un <em>commit</em> y un <em>push</em>.</p>

<h1><a id="user-content-gcc-gnuplot-y-bash" class="anchor" href="#gcc-gnuplot-y-bash" aria-hidden="true"><span class="octicon octicon-link"></span></a>gcc, gnuplot y bash</h1>

<p>Clone el repositorio <a href="https://github.com/tisnik/c-examples">c-examples</a> de Pavel Tišnovský. <strong>¡No lo clone al interior de su repositorio personal!</strong></p>

<ol>
<li><p>Escriba un comando en <code>bash</code> que tome el código de todos los ejemplos en la carpeta <code>/c-examples/src/</code> y construya un archivo en Markdown con el código de los archivos en bloques de código bajo headers con el nombre del archivo correspondiente.</p></li>
<li><p>Ahora borre los archivos <code>c31_goto.c</code>, <code>c83_terminal_io.c</code> y <code>cA5_thread_join.c</code> y haga lo siguiente para los primeros (en orden alfabético) treinta archivos de C restantes.  Escriba un comando de <code>bash</code> que compile cada archivo de C, que luego imprima la línea que contiene la palabra <em>Example</em> y <a href="http://stackoverflow.com/questions/19274127/how-do-you-grep-a-file-and-get-the-next-5-lines">la que le sigue</a>, que luego ejecute el ejecutable, y que finalmente espere a que <a href="http://www.linuxquestions.org/questions/linux-general-1/how-to-make-shell-script-wait-for-key-press-to-proceed-687491/">el usuario presione alguna tecla</a> para continuar con el siguiente archivo. </p></li>
<li><p>Escriba un programa en C que genere 1000 puntos aleatorios uniformemente distribuidos sobre una esfera de radio unitario. Implemente la idea descrita al final del artículo <a href="http://mathworld.wolfram.com/SpherePointPicking.html">Sphere point picking</a> y utilice la implementación para generar número con distribución normal <a href="http://c-faq.com/lib/gaussian.html">aquí</a> detallada. Compile, ejecute y rediriga la salida al archivo <code>aleatorios_esfericos</code>. Luego escriba una secuencia de comandos de <code>gnuplot</code> para graficar estos puntos usando <code>splot</code>.</p></li>
</ol>

<p><strong>Al terminar la clase ejecute <code>lottery.sh</code> para saber si su taller va a ser revisado.</strong></p>
</article>
  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.03400s from github-fe123-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
    </ul>
  </div>
</div>


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-447ce66a36506ebddc8e84b4e32a77f6062f3d3482e77dd21a77a01f0643ad98.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github/index-273626d05f0daba1adb856ea6f9d82ff151f8b9f23a21044a761d2e2f843b354.js"></script>
      
      
  </body>
</html>

