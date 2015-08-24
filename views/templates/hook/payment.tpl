{if $product == 'multiple_product'}
<div class="row">
  <div class="col-xs-12 col-md-6">
      <p class="payment_module">
        <a class="bankwire">
          <span>*Please note: Installment payment is not supported for multiple products in Cart.</span>
        </a>
      </p>
  </div>
</div>

{else if $product == 'not_installment'}
<div class="row">
  <div class="col-xs-12 col-md-6">
      <p class="payment_module">
        <a class="bankwire">
          <span>*Product doesn't suppport installment as payment.</span>
        </a>
      </p>
  </div>
</div>

{else}
<div class="row">
  <div class="col-xs-12 col-md-6">
    <p class="payment_module">
      {if version_compare(Configuration::get('PS_INSTALL_VERSION'), '1.5') == -1}
        <a class="bankwire" href="{$base_dir|cat:'modules/veritransmandiri/payment.php'}" title="MANDIRI Installment">
      {else}
        <a class="bankwire" href="{$link->getModuleLink('veritransmandiri', 'payment')}" title="MANDIRI Installment">
      {/if}
        <img src="{$this_path}vtwebmandiri.png" alt="{l s='MANDIRI Installment' mod='veritransmandiri'}" />
        {l s=''}
      </a>
    </p>  
  </div>
</div>
{/if}