<script setup>
  import Project from '@/components/Project.vue';

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

<template>
  <!-- Project List -->
  <section class="space-y-8">
    <Project
      v-for="project in projects"
      :key="project.id"
      :project="project"
      class="pb-6 border-b border-gray-400"
    />
  </section>
</template>
