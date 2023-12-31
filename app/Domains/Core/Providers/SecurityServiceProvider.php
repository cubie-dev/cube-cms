<?php

declare(strict_types=1);

namespace App\Domains\Core\Providers;

use HTMLPurifier;
use HTMLPurifier_Config;
use Illuminate\Foundation\Application;
use Illuminate\Support\ServiceProvider;

class SecurityServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register(): void
    {
        $this->app->singleton(HTMLPurifier_Config::class, function () {
            $config = HTMLPurifier_Config::createDefault();
            $config->set('HTML.AllowedElements', config('filtering.discussion.allowed_elements'));
            $config->set('HTML.AllowedAttributes', config('filtering.discussion.allowed_attributes'));
            $config->set('Core.Encoding', 'UTF-8');
            $config->set('HTML.DefinitionID', 'html5-definitions');
            $config->set('HTML.DefinitionRev', 1);
            $config->set('URI.AllowedSchemes', ['data' => true, 'http' => true, 'https' => true]);
            $config->set('CSS.Trusted', true);
            $config->set('CSS.AllowTricky', true);
            return $this->addElements($config);
        });

        $this->app->bind(HTMLPurifier::class, function (Application $app) {
            return new HTMLPurifier($app->make(HTMLPurifier_Config::class));
        });
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    private function addElements(HTMLPurifier_Config $config): HTMLPurifier_Config
    {
        if ($def = $config->maybeGetRawHTMLDefinition()) {
            $def->addElement('figure', 'Block', 'Optional: (figcaption, Flow) | (Flow, figcaption) | Flow', 'Common');
            $def->addElement('figcaption', 'Inline', 'Flow', 'Common');
        }

        return $config;
    }

    /**
     * @return array<string>
     */
    public function provides(): array
    {
        return [
            'html.purifier.config',
            'html.purifier'
        ];
    }
}
