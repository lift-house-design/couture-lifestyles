<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/* Set Environment */
// detect from host (local.domain.com => local, domain.lifthousedesign.com => development, other => production)
if(strpos($_SERVER['HTTP_HOST'],'couture-lifestyles.local') === 0)
    $config['environment'] = 'local';
elseif(strpos($_SERVER['HTTP_HOST'],'.lifthousedesign.com') !== false)
    $config['environment'] = 'development';
else
    $config['environment'] = 'production';

$config['environment']='local';

$config['error_email'] = '';
/* Database Configuration */
$config['databases']=array(
    'default' => array(
        'hostname' => 'localhost',
        'dbdriver' => 'mysqli',
        'db_debug' => true,     
    ),
    'local'=>array(
        'username'=>'root',
        'password'=>'',
        'database'=>'couturelifestyles',
    ),
    'development'=>array(
        'username'=>'couturelifestyle',
        'password'=>'couturelifestyle',
        'database'=>'couturelifestyles',
    ),
    'production'=>array(
        'username'=>'couturelifestyle',
        'password'=>'couturelifestyle',
        'database'=>'couturelifestyles',
        'db_debug' => false,
    ),
);
$config['database'] = array_merge(
    $config['databases']['default'],
    $config['databases'][$config['environment']]
);
//var_dump($config['database']);
/* URL / Path Configuration */
$config['domain'] = $_SERVER['HTTP_HOST'];
$config['scheme'] = 'http';
if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off')
    $config['scheme'] .= 's';
$config['base_path'] = $config['scheme'] . '://' . $config['domain'];
$config['full_path'] = $config['base_path'] . $_SERVER['REQUEST_URI'];
$config['assets_url'] = '/assets';
$config['module_path'] = APPPATH.'modules';

/* Metadata/SEO */
$config['meta'] = array(
    'site_name' => 'Couture Homes',
    'title' => "Couture Homes",
    'description' => "Couture Homes",
    'keywords' =>'Couture Homes',
    'url' => $config['full_path'],
    'image' => '/assets/img/logo.png'
);

$config['copyright']='Copyright &copy; '.$config['meta']['site_name'].' '.date('Y').' All Rights Reserved.';

/* Google Analytics */
$config['ga_code']=FALSE;

/* Social Media .. dont think we need this, can edit in /admin */
$config['social_media'] = array(
    'twitter' => '',
    'googleplus' => '',
    'facebook' => '',
    'linkedin' => '',
    'youtube' => '',
    'pinterest' => '',
    'instagram' => ''
);

/* E-mail Notifications */
$config['contact_recipient'] = '';
$config['email_notifications']=array(
    'sender_email'=>'no-reply@couturelifestyles.com',
    'sender_name'=>'Couture Homes',
    'config'=>array(
        'protocol'=>'sendmail',
        'mailtype'=>'html',
    ),
);

/* SMS Notifications */
$config['sms_notifications']=array(
    'config'=>array(
        'mode'=>'prod',
        'account_sid'=>'AC295178e1f333781132528cd16d55e49b',
        'auth_token'=>'81905b30336cc2fb674adf13e3f17fb2',
        'api_version'=>'2010-04-01',
        'number'=>'+15129422374',
    ),
);
