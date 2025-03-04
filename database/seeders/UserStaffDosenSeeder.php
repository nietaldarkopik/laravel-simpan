<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Artisan;

class UserStaffDosenSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
		$user = 
		[
			'Deni Irawan, S.T.',
			'Ade Mulyana',
			'Aep Saefulloh',
			'Agung Darmawan',
			'Ahmad Fauzani Muslim',
			'Alica Gina Rachmalia Sutanto, S.I.Kom',
			'Anang Suryana, S.P',
			'Andri Firmansyah',
			'Ani Hanipah, SP.',
			'Ari Ramdani',
			'Bayu Sukmawan',
			'Caca Priatna',
			'Deni Priatna, SH',
			'Dera Apriliana',
			'Destiana Andhini, S.E.',
			'Doni Irawan',
			'E. Ernawati, S.Pd',
			'Eden Sumpena',
			'Eko Setiarto, S.Hut',
			'Fuji Destiandi',
			'Haris Risdiana',
			'Heni Nurulaeni, S.Sos',
			'Heri Lukman',
			'HILDA NUR SYAFIRA',
			'Ineu Nuraeni, S.Sos.',
			'Lili',
			'Luthhiady Kusuma Ramdani Hidayat, S.T',
			'MIFTAH FARID',
			'Mochamad Maulana Suwardi',
			'Muhammad Millah Irsyadin',
			'Nenden Siti Nursusanti, S.Psi.',
			'Nino Subirno',
			'Noval Pebriansyah, S.M',
			'Nurhendra Gunawan',
			'Omay Komara',
			'Rezki Sufindra, S.Si',
			'Rina Marliana',
			'Ripki Ripkianto',
			'Sopyan Agus Salam, S.Sos, M.M',
			'Taofik Basuki',
			'Tatang Rohmat',
			'Tedi Bastian',
			'Ujang Saripudin',
			'Ujang Siron, SP.',
			'Wawan',
			'Wawan Setiawan',
			'Wina Sunarti',
			'Wirawan',
			'Wisnu Mulyono',
			'Yeni Yuarni',
			'Agi Dahtiar, S.Pd., M.Pd.',
			'Bayu Jaka Magistra, M.Hum',
			'Dra. Ana Yohana, M.P.',
			'Edang Juliana SP.,MP',
			'Ir. Karyana, KS., M.Si',
			'Lilis Amaliah Rosdiana, S.Pd., M.Pd.',
			'Mochamad Ramdan, S.P.,M.P',
			'Ning Srimenganti, S.Pd., M.P.',
			'Yuliana Samantha SP., M.EP.',
			'Zahra Nur Safa, S.P.,M.P',
			'Dr. Dra. Tuti Gantini, M.P.',
			'Dr. Ir. Dety Sukmawati, M.P.',
			'Dr. Ir. Hj. Euis Dasipah, M.P.',
			'Dr. Ir. Nataliningsih, M.Pd.',
			'Dr. Ir. Nendah Siti Permana, M.P.',
			'Dr. Ir. Tatang Mulyana, M.M',
			'Asep Samsul Mustopa, SP., MP',
			'Dr. Ir. Agus Surya Mulya, M.P.',
			'Dr. Ir. Elly Roosma Ria, M.Si.',
			'Dr. Ir. Rohana Abdullah, M.S.',
			'Dr. Kovertina Rakhmi Indriana, S.P., M.P.',
			'Dr. Linlin Parlinah, S.P.,M.P',
			'Dra. Iis Aisyah, M.Si.',
			'Indriana Ulfah, S.P.,M.P',
			'Ir. Endeh Masnenah, M.P.',
			'Ir. Hudaya Mulyana, M.P.',
			'Ir. Yana Taryana, M.P.',
			'Lia Sugiarti, S.P., M.P.',
			'Prof. Dr. Dra. Tien Turmuktini, M.P.',
			'Reni Nurhayatini, S.T., M.P.',
			'Romiyadi, S.P., M.P.',
			'Roni Assafaat Hadi, S.P., M.P.',
			'Dr. Ir. R. Wahyono Widodo, M.P. (S2)',
			'Prof. Dr. Dra. R. Budiasih, M.P. (S2)',
			'Prof. Dr. Ir. Ai Komariah, M.S. (S2)',
			'Prof. Dr. Ir. Lia Amalia, M.P. (S2)',
			'Prof. Dr. Ir. Noertjahyani, M.P. (S2)',
			'Prof. Dr. Ir. Nunung Sondari, M.P. (S2)',
			'Dodi Tisna Amijaya, SE.,MM',
			'Dr. Annisa Fitri Anggraeni , SE.,MM.,CISA',
			'Drs. H. Oyon Suharyono, Ak.,MM, CTA',
			'Hendri Maulana, SE.,M.Ak.,CTA',
			'Indri Nuryasintia, M.Pd,',
			'Karna Sopandi, , S.E.,M.M',
			'Kartika Pratiwi, SE.,M.Ak',
			'Maria Lusiana Yulianti, SE.,MM',
			'Meita Chandra Devi , SE.,M.Ak.,CA',
			'Mochamad Zakaria, S.E.,M.Ak',
			'Dr. Ir. Ishak Tan, M.Si.',
			'Dr. Ir. Sri Wilujeng, M.Si',
			'Dra. Ina Darliana. M.Si',
			'Dwi Wahyuni, S.Hut.,M.Si',
			'Fahriza Luth, S.Hut., M.P',
			'Ir. Asep Purwanto, M.M',
			'Ir. Prasetyo Widodo, M.P',
			'Noor Rochman, S.TP.,M.P,',
			'Raizal Fahmi Solihat, S.Hut., M.P',
			'Reni Srimulyaningsih, S.Hut., M.Si',
			'Rian Susila, S.Hut., M.P',
			'Toni Supriyanto, , S.Hut.,M.M.',
			'Anne Lasminingrat, SE.,MM',
			'Dr. Feby Febrian, SE.,MM',
			'Drs. Rudi Suprianto Ahmadi, MM',
			'Herni Suryani, SE.,SI.Kom.,MM',
			'Hilman Abdurrahman, S.E.,M.M',
			'Luthfi Setiadiwibawa, SE.,MM',
			'Mochammad Anjar Albagja, S.E.,M.M',
			'Nana Prihatna,, S.E.,M.Si,',
			'Nining Harnani Spd.,MM',
			'Rakhmia Nalibratawati, S.E., M.E.Sy.',
			'Rini Astuti,, S.Pt.,M.M',
			'Roby Ahada, S.Kom., MM',
			'Tati Sumarti, S.I.Kom.,M.M',
			'Bayu Anggara Mukti, SS.,MM',
			'Dr. AGUS MULYANA, S.E.,M.M',
			'Dr. Dodi Sukmayana, SE.,MM',
			'Dr. H. Deden Komar Priatna, ST.,SIP.,MM',
			'Dr. Hj. Winna Roswinna, SE.,MM.,CPM',
			'Dr. R. JUSDI JACHLAN',
			'Dr. Siti Aisyah tuti Handayani, S.Sos.,M.Si',
			'Dr. SUSAN RIDWAN',
			'Adhi Hermawan, S.T., M.T.',
			'Dian Kusbandiah, S.T.,M.T',
			'Hilman Rismayadi, S.T., M.T.',
			'Risma Viantara, S.T., M.T.',
			'Sigit Wisnuadji, S.T., M.Sc.',
			'Achmad Ruchlihadiana T., S.T., M.T.',
			'Aning Haryati, S.T., M.T.',
			'Danis Suhari Singawilastra, S.T., M.T.',
			'Levana Apriani, S.T., M.T.',
			'Tuti Anggraeni, S.T.,M.M.',
			'Nenny Kusumah Wardhani, Ir., M.T.',
			'Santi Prihastuti, S.Si, M.T.',
			'Tati Artiningrum, Ir.,M.T.',
			'Yukeu Dwi Hasyti, S.T., M.M.M.T',
			'Yuliaty Heliana Pangow, S.T., M.T.',
			'Achmad Saeful Fasa, S.T., M.T.',
			'Citra Artifiani Havianto, S.T., M.T.',
			'Dodon Turgana Tarmidi, Ir.,M.M.',
			'Dr. Buntaram, S.T., M.M.',
			'Ina Revayanti, S.T., M.T.',
			'Ir. Muhammad Ramadhan, M.T.',
			'Shinta Kusumawati, S.T., M.T.',
			'Dr. Ir. An An Anisarida, S.T., M.T.',
			'Edwar Hafudiansyah, SPd.,M.T',
			'Felix Setiawan, S.T.,M.T',
			'Lucky Amperawan Schipper, S.T., M.T.',
			'Syapril Janizar, S.T., M.T.M.M'
		];

		$role = Role::where(['name' => 'Pengguna'])->get()->first();
		foreach($user as $i => $u)
		{
			$us = User::firstOrCreate(
				['email' => 'pengguna'.$i.'@gmail.com'],
				['name' => $u,
				'password' => Hash::make('12345'),]
			);
			$us->assignRole([$role->id]);
		}

    }
}
