<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class News_Feed extends App_Controller
{
	public $page_size = 100000;

	public function __construct()
	{
		$this->models[] = 'content';
		$this->models[] = 'news_feed';
		parent::__construct();
		$this->asides['topbar'] = 'topbar';
		$this->asides['footer'] = 'footer';
		$this->asides['notifications'] = 'notifications';
		
		// use min_css and min_js when possible to load assets through minify
		//$this->min_js[] = 'application.js';		
		//$this->min_css[] = 'application.css';
		
		/*
			LessCSS should only be used for development. 
			When you are ready to deploy, compile your less files into css files.
			Then remove any included .less files so that less.js will not be loaded.
		*/
		//$this->less_css[] = 'application.less';
	}

	/* Ad hoc pages */

	public function index($start = 0)
	{
            
		$start = max(0, $start);
		$this->data['news'] = $this->news_feed->recent($start, $this->page_size);
		if(!empty($this->data['news']))
		{
			$oldest = $this->data['news'][count($this->data['news']) - 1];
			$newest = $this->data['news'][0];
			if($this->news_feed->has_older($oldest['id']))
				$this->data['older'] = $start + $this->page_size;
			if($this->news_feed->has_newer($newest['id']))
				$this->data['newer'] = $start - $this->page_size;
		}
	}

	public function view($id)
	{
		$this->data['news_feed'] = $this->news_feed->get($id);
	}
}