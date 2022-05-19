<?php

use PrintPlius\ModuleSkeleton\Installer\Installer;

class Module_skeleton extends Module
{

    public function __construct()
    {
        $this->tab = 'other_modules';
        $this->name = 'module_skeleton';
        $this->version = '1.0.0';
        $this->author = 'PrintPlius';
        $this->bootstrap = true;
        $this->controllers = [];

        parent::__construct();
        $this->autoload();

        $this->displayName = $this->trans('Module Skeleton', [], 'Modules.Moduleskeleton.Module');
        $this->description = $this->trans('', [], 'Modules.Moduleskeleton.Module');
    }

    public function install()
    {
        $installer = new Installer($this);

        return parent::install()
        ;
    }

    public function uninstall()
    {
        $installer = new Installer($this);

        return parent::uninstall()
        ;
    }

    public function isUsingNewTranslationSystem()
    {
        return true;
    }

    private function autoLoad()
    {
        $autoLoadPath = $this->getLocalPath() . 'vendor/autoload.php';

        require_once $autoLoadPath;
    }

}
