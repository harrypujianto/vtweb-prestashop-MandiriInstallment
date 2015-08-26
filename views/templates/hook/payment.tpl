{if $product == 'installment_off'}

{else if $product == 'multiple_product'}
<div class="row">
  <div class="col-xs-12 col-md-6">
      <p class="payment_module">
        <a class="bankwire">
          <img src="{$this_path}vtwebmandiri.png" alt="{l s='BNI Installment' mod='veritransbni'}" /><br/><span>*Please note: Mandiri Installment payment is only allowed for one product type on your cart (and only if the prduct allow payment by installment)</span>
        </a>
      </p>
  </div>
</div>

{else if $product == 'not_installment'}
<div class="row">
  <div class="col-xs-12 col-md-6">
      <p class="payment_module">
        <a class="bankwire">
          <img src="{$this_path}vtwebmandiri.png" alt="{l s='BNI Installment' mod='veritransbni'}" /><br/><span>*Product doesn't support Mandiri installment as payment.</span>
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