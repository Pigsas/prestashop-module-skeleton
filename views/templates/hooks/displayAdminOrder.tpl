<div class="col-md-4" style="padding-left: 0">
<div class="card mt-2 d-print-none">
    <div class="card-header">
        <div class="row">
            <div class="col-md-6">
                <h3 class="card-header-title">
                    {l s='PrintPlius Integration' d='Modules.Printpliusintegration.Displayadminorder'}
                </h3>
            </div>
        </div>
    </div>
    <div class="card-body">
        {if isset($response.errors)}
            <div class="alert alert-danger" role="alert">
                {if is_array($response.errors) }
                    {foreach from=$response.errors item='error'}
                        <p>{$error}</p>
                    {/foreach}
                {else}
                    <p>{$response.errors}</p>
                {/if}
            </div>
        {/if}
        {if isset($response.success)}
            <div class="alert alert-success" role="alert">
                <p>{$response.success}</p>
            </div>
        {/if}

        <form method="post" class="form-horizontal" action="{$orderLink}">
            {if $printPliusOrder}
            <p>
                <b>{l s='Order reference' d='Modules.Printpliusintegration.Displayadminorder'}</b>:
                {$printPliusOrder.reference}
            </p>
            <p>
                <b>{l s='Tracking number' d='Modules.Printpliusintegration.Displayadminorder'}</b>:
                {$printPliusOrder.shipping_number}
            </p>
            {/if}
            {if !$printPliusOrder}
                <div class="text-right">
                    <button type="submit" class="btn btn-primary" name="send-to-customer">
                        {l s='Send To Customer' d='Modules.Printpliusintegration.Displayadminorder'}
                    </button>
                    <button type="submit" class="btn btn-primary" name="send-to-shop">
                        {l s='Send To Your Shop' d='Modules.Printpliusintegration.Displayadminorder'}
                    </button>
                </div>
            {/if}
        </form>
    </div>
</div>
</div>
