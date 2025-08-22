<script setup>
  import {ref, onMounted } from 'vue';
  import Project from '@/components/Project.vue';
  
  // Load projects from public/projects.json
  const projects = ref([]);
  const isLoading = ref(true);
  const error = ref(null);

  onMounted(async () => {
    try {
      const res = await fetch("/projects.json"); // at public/projects.json

      if (!res.ok) throw new Error('HTTP Error! Status: ${ res.status }');

      projects.value = await res.json();
    } catch (err) {
      error.value = err.message;
    } finally {
      isLoading.value = false;
    }
  });
</script>

<template>
  <!-- Project List -->
  <section class="space-y-8">
    <div v-if="isLoading">Loading Projects ...</div>
    <div v-else-if="error">
      Loading Projects Failed
      <p> {{ error }} </p>
    </div>
    <div v-else>
      <Project
        v-for="project in projects"
        :key="project.id"
        :project="project"
      />
    </div>
  </section>
</template>
