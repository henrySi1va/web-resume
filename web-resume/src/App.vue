<template>
  <div class="min-h-screen bg-gray-200 text-gray-900 font-mono px-6 py-8">
    <!-- Header -->
    <header class="mb-8 text-center">
      <h1 class="text-3xl font-bold">Henry Silva Technical Resume</h1>
      <div class="mt-4 max-w-lg mx-auto">
        <input
          type="text"
          placeholder="Search projects..."
          class="w-full px-4 py-2 rounded-lg bg-white text-gray-900 placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-teal-500"
        />
      </div>
    </header>

    <!-- Project List -->
    <section class="space-y-8">
      <div
        v-for="project in projects"
        :key="project.id"
        class="pb-6 border-b border-gray-400"
      >
        <h2 class="text-xl font-semibold mb-2">{{ project.title }}</h2>
        <p class="mb-4 text-gray-700">{{ project.description }}</p>

        <ul class="space-y-1 text-sm">
          <li><span class="font-bold">Year:</span> <span>{{ project.year }}</span></li>
          <li><span class="font-bold">Role:</span> <span>{{ project.role }}</span></li>
          <li><span class="font-bold">Industry:</span> <span>{{ project.industry }}</span></li>
          <li><span class="font-bold">Tools:</span> <span>{{ project.tools }}</span></li>
          <li><span class="font-bold">Tech:</span> <span>{{ project.tech }}</span></li>
          <li>
            <span class="font-bold">Links:</span>
            <span>
              <a
                v-for="link in project.links"
                :key="link.url"
                :href="link.url"
                class="text-teal-600 hover:underline mr-3"
                target="_blank"
              >
                {{ link.label }}
              </a>
            </span>
          </li>
        </ul>
      </div>
    </section>
  </div>
</template>

<script setup>
const projects = [
  {
    id: 1,
    title: "IoT Sensor Platform",
    description:
      "Developed a full-stack IoT platform to collect, analyze, and visualize environmental data in real time.",
    year: "2023",
    role: "Lead Engineer",
    industry: "Industrial IoT",
    tools: "Docker, GitHub Actions, Grafana",
    tech: "C++, Zephyr RTOS, Node.js",
    links: [{ label: "GitHub", url: "#" }],
  },
  {
    id: 2,
    title: "Task Tracking Web App",
    description:
      "Built a lightweight task tracker to explore front-end development with Vue.js and MongoDB.",
    year: "2024",
    role: "Full Stack Developer",
    industry: "Software Tools",
    tools: "VS Code, MongoDB Atlas, Tailwind",
    tech: "Vue.js, Express.js, MongoDB",
    links: [
      { label: "Demo", url: "#" },
      { label: "GitHub", url: "#" },
    ],
  },
];
</script>

<style>
  body {
    font-family: 'Inter', sans-serif;
  }
  .mono {
    font-family: 'Fira Code', monospace;
  }
</style>
