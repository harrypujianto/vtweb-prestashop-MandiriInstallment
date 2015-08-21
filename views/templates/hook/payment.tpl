<div class="row">
  <div class="col-xs-12 col-md-6">
    <p class="payment_module">
      {if version_compare(Configuration::get('PS_INSTALL_VERSION'), '1.5') == -1}
        <a class="bankwire" href="{$base_dir|cat:'modules/veritransmandiri/payment.php'}" title="MANDIRI Installment">
      {else}
        <a class="bankwire" href="{$link->getModuleLink('veritransmandiri', 'payment')}" title="MANDIRI Installment">
      {/if}
        <img src="{$this_path}vtwebmandiri.png" alt="{l s='MANDIRI Installment' mod='veritransmandiri'}" height="30px"/>
        {l s=''}
      </a>
    </p>  
  </div>
</div>
