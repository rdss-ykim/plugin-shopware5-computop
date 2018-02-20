{extends file="parent:frontend/checkout/confirm.tpl"}

{* SW 5.0, 5.1 Disable BillingAddress Action Buttons *}
{block name="frontend_checkout_confirm_left_billing_address_actions"}
{/block}

{* SW 5.2 - 5.3, 5.4? Change PaymentMean Selection Action Button to FatchipCTAmazonCheckout Controller *}
{* for shippingAddress != billingAddress *}
{* Billing: *}
{block name="frontend_checkout_confirm_information_addresses_billing_panel_actions"}
{/block}

{* SW 5.2 - 5.3, 5.4? Change PaymentMean Selection Action Button to FatchipCTAmazonCheckout Controller *}
{* for shippingAddress = billingAddress *}
{* Billing and Shipping: *}
{block name="frontend_checkout_confirm_information_addresses_equal_panel_shipping"}
{/block}

{* SW 5.0 , 5.1 Disable ShippingAddress Action Buttons *}
{block name="frontend_checkout_confirm_left_shipping_address_actions"}
{/block}

{* SW 5.2 - 5.3, 5.4? Change PaymentMean Selection Action Button to FatchipCTAmazonCheckout Controller *}
{* for shippingAddress != billingAddress *}
{block name="frontend_checkout_confirm_information_addresses_shipping_panel_actions"}
{/block}


{* SW 5.0 - 5.4 Change PaymentMean Selection Action Button to FatchipCTAmazonCheckout Controller *}
{block name='frontend_checkout_confirm_left_payment_method_actions'}
    <div class="panel--actions is--wide payment--actions">
        {* Action buttons *}
        <a href="{url controller=FatchipCTAmazonCheckout action=shippingPayment sTarget=checkout}" class="btn is--small btn--change-payment">
            Ändern
        </a>
    </div>
{/block}