<?php

namespace Database\Seeders;

use App\Models\Writer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $name = [
            "Raka Putra Wicaksono",
            "Bia Mecca Anissa",
            "Abi Firmansyah",
            "Jessica Wangsa"
        ];

        $specialist = [
            "Specialist Interactive Multimedia",
            "Specialist Software Engineering",
            "Specialist Interactive Multimedia",
            "Specialist Software Engineering"
        ];

        $writerimages = [
            'writermale1.jpg',
            'writerfemale1.jpg',
            'writermale2.jpg',
            'writerfemale2.jpg'
        ];

        $temp = 0;

        foreach ($name as $index => $n) {
            Writer::create([
                "name" => $n,
                "specialist" => $specialist[$index % count($specialist)],
                "image" => $writerimages[$index % count($writerimages)]
            ]);
            $temp++;
        }
    }
}
