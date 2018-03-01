<?php

namespace Shopware\Plugins\FatchipCTPayment\Subscribers;

use Enlight\Event\SubscriberInterface;
use Fatchip\CTPayment\CTPaymentService;

/**
 * Class Service
 *
 * @package Shopware\Plugins\FatchipCTPayment\Subscribers
 */
class Service implements SubscriberInterface
{
    /**
     * Returns the subscribed events
     *
     * @return array<string,string>
     */
    public static function getSubscribedEvents()
    {
        return [
            'Enlight_Bootstrap_InitResource_FatchipCTPaymentApiClient' =>
                'onInitApiClient',
        ];
    }

    /**
     * @return CTPaymentService
     */
    public function onInitApiClient()
    {
        $plugin = Shopware()->Plugins()->Frontend()->FatchipCTPayment();
        $config = $plugin->Config()->toArray();
        return new CTPaymentService($config);

    }
}
