<div class="header no-print">
    <h3 onclick="location.href='index.php'">OMNI BANK</h3>
    
    <div class="search-bar-container">
        <div>
            <div class="search-bar-rel-cont">
                <i  class="fas fa-search"></i>
                <input id="search-customer" class="border" type="text" placeholder="Search via name..."> 
            </div>
        </div>
        
    </div>
    <button class="search-bar-button"><i class="fas fa-search"></i> Search</button>
</div>

<div class="header-padding"></div>


<script>
    $('.search-bar-button').click(() => {
        $('.search-bar-container').show()
        $('.search-bar-button').hide()
        document.getElementById('search-customer').focus()
    })
</script>

<script>
    $('#search-customer').on('input', () => {
        let x = document.getElementsByClassName('customers')[0]
        let name = $('#search-customer').val()
        let url = 'search-customer.php'
        name = name.trim()
        
        x.innerHTML = '<div class="center primary"><i class="fas fa-sync-alt fa-spin mr-5px"></i> Searching . . .</div>'
        setTimeout(() => {
            $('.customers').load(url, {
                name  
            })
        }, 1000)
    })
</script>