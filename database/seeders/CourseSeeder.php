<?php

namespace Database\Seeders;

use App\Models\Course;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $faker = Faker::create('id_ID');

        $name = [
            "Human and Computer Interaction",
            "User Experience",
            "User Experience for Digital Immersive Technology",
            "Pattern Software Design",
            "Agile Software Development",
            "Code Reengineering"
        ];

        $images = [
            'hci-article.png',
            'ux-article.png',
            'ux-digital-article.png',
            'psd-article.png',
            'agile-article.png',
            'cr-article.jpg'
        ];

        $temp = 0;

        foreach ($name as $index => $n) {
            Course::create([
                "category_id" => $temp < 2 ? 1 : 2,
                "writer_id" => rand(1, 4),
                "name" => $n,
                "description" => $faker->paragraph(12),
                "course_date" => $faker->dateTimeBetween('2024-01-01', '2024-11-01')->format('Y-m-d'),
                "image" => $images[$index % count($images)]
            ]);
            $temp++;
        }
    }
}
