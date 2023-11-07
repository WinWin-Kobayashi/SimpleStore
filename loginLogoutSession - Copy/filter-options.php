<div class=" mt-3">
    <form class="row g-3 d-flex justify-content-center" action="" method="POST">
        <div class="col-md-3 p-3 bg-white m-2 borderstyle">
            <label for="gender" class="form-label d-flex justify-content-center">Gender</label>
            <select id="gender" name="gender" class="form-select">
                <option value="" >All</option>
                <!-- If the condition ($gender === 'Male') evaluates to false, the empty string is used. 
                     Otherwise, if the condition is true, the string 'selected' is used. -->
                <option value="Male" <?= $gender === 'Male' ? 'selected' : '' ?>>Male</option>
                <option value="Female" <?= $gender === 'Female' ? 'selected' : '' ?>>Female</option>
            </select>
        </div>
        <div class="col-md-3 p-3 bg-white m-2 borderstyle">
            <label for="mtype" class="form-label d-flex justify-content-center">Member Type</label>
            <select id="mtype" name="member_type" class="form-select">
                <option value="">All</option>
                <option value="Member" <?= $mtype === 'Member' ? 'selected' : '' ?>>Member</option>
                <option value="Seller" <?= $mtype === 'Seller' ? 'selected' : '' ?>>Seller</option>
            </select>
        </div>
        <div class="col-md-3 p-3 bg-white m-2 borderstyle">
            <label for="addr" class="form-label d-flex justify-content-center">Address</label>
            <select id="addr" name="home_address" class="form-select">
                <option value="">All</option>
                <option value="Metro Manila" <?= $addr === 'Metro Manila' ? 'selected' : '' ?>>Metro Manila</option>
                <option value="Cebu City" <?= $addr === 'Cebu City' ? 'selected' : '' ?>>Cebu City</option>
                <option  value="Baguio City" <?= $addr === 'Baguio City' ? 'selected' : '' ?>>Baguio City</option>
                <option  value="Davao City" <?= $addr === 'Davao City' ? 'selected' : '' ?>>Davao City</option>
                <option  value="Iloilo City" <?= $addr === 'Iloilo City' ? 'selected' : '' ?>>Iloilo City</option>
                <option  value="Bogo City" <?= $addr === 'Bogo City' ? 'selected' : '' ?>>Bogo City</option>
                <option  value="Bohol" <?= $addr === 'Bohol' ? 'selected' : '' ?>>Bohol</option>
            </select>
        </div>
        <div class="col-md-5 p-3 bg-white m-2 borderstyle">
            <label for="from_date" class="form-label d-flex justify-content-center">From date</label>
            <input type="date" name="start_date" class="form-control" id="from_date" value="<?= $from_date ?>">
        </div>
        <div class="col-md-5 p-3 bg-white m-2 borderstyle">
            <label for="to_date" class="form-label d-flex justify-content-center">To date</label>
            <input type="date" name="end_date" class="form-control" id="to_date" value="<?= $to_date ?>">
        </div>
        <div class="col-md-12 d-flex justify-content-center">
            <button class="button" name="search">Filter</button>
        </div>
    </form>
</div>